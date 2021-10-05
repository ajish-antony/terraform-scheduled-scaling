  resource "aws_autoscaling_schedule" "scale_down" {
  scheduled_action_name = "scale_down"
  min_size = 1
  max_size = 1
  recurrence = "0 10 * * *"
  desired_capacity = 1
  autoscaling_group_name = "${aws_autoscaling_group.asg1.name}"
}
resource "aws_autoscaling_schedule" "scale_up" {
  scheduled_action_name = "scale_up"
  min_size = 2
  max_size = 2
  recurrence = "10 10 * * *"
  desired_capacity = 2
  autoscaling_group_name = "${aws_autoscaling_group.asg1.name}"
}
