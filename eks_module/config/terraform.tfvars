
aws_eks_cluster_config = {

      "demo-cluster" = {
        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0de62224ae081fe21", "subnet-086f2f7d596778f26", "subnet-0be0515199e57b4b8"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0de62224ae081fe21", "subnet-086f2f7d596778f26", "subnet-0be0515199e57b4b8"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
