let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_method = ["SLAM", "LiDAR", "IMU", "Camera", "GNSS", "GPS", "RTK", "Calibration", "Point Cloud", "LiDAR-inertial", "Visual-inertial", "LIO", "VIO", "Odometry", "Registration", "Mapping", "Map", "Localization"];
let titles = titles_method + titles_type;
let authors_array = ["Fu Zhang", "Wei Xu", "Jiarong Lin", "Xingxing Zuo", "Ming Liu"];

let conferences = [
    // conference
    "ICRA", "IROS", "RSS", "CVPR", "ECCV", "ICCV", "3DV", "ACM MM", "IEEE VIS", "SIGGRAPH", "ICLR", "ICML", "NeurIPS", "NIPS",
    // journal
    "RA-L", "TRO", "IJRR", "TIE", "TIM", "TPAMI"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;