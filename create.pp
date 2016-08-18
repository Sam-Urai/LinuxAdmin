ec2_instance { 'MySQL+Apache':
  ensure            => present,
  region            => 'us-west-2',
  availability_zone => 'us-west-2b',
  subnet            => 'subnet-1eaaff7a',
  image_id          => 'i-3c50f5a9',
  instance_type     => 't2.micro',
  monitoring        => false,
  key_name          => 'icinga-project',
  iam_instance_profile_name	=> 'S3_Logs_Storage_Full',
  security_groups   => ['SSH+HTTP+HTTPS+MySQL+VPC'],
  user_data         => template('/home/ubuntu/setup.sh'),
  tags              => {
    tag_name => 'MySQL+Apache',
  },
}

