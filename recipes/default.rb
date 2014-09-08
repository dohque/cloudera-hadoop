

case node[:platform]
  when "centos"
    yum_repository "cloudera-cdh4" do
      description  "Cloudera's Distribution for Hadoop, Version 4"
      url          "http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/4/"
      action       :create
    end
    %w{
      hadoop-hdfs-namenode
      hadoop-hdfs-secondarynamenode
      hadoop-hdfs-datanode
      hadoop-0.20-mapreduce-jobtracker
      hadoop-0.20-mapreduce-tasktracker
      hadoop-client
    }.each do |pkg|
      package pkg
   end
#  else 
end
