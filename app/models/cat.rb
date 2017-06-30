class Cat < ApplicationRecord
  belongs_to :user
  has_many :events
  has_attached_file :cat_pic,
                    # styles: { medium: '300x300#', thumb: '100x100#' },
                    storage: :s3,
                    url: ':s3_domain_url',
                    path: "/:class/:attachment/:id_partition/:style/:filename",
                    s3_region: 'us-west-1',
                    # s3_host_name:  ENV["AWS_ENDPOINT"],
                    s3_credentials: Proc.new{ |a| a.instance.s3_credentials }
    def s3_credentials
      {
        bucket: ENV["S3_BUCKET_NAME"],
        access_key_id: ENV["S3_ACCESS_KEY_ID"],
        secret_access_key: ENV["S3_SECRET_ACCESS_KEY"]
      }
    end

    validates_attachment_content_type :cat_pic, content_type: /\Aimage\/.*\Z/

    # def pic
    #   's3-us-west-1' + cat_pic[2..-1]
    # end



end
