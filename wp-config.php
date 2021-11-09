<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'gialai' );

/** Username của database */
define( 'DB_USER', 'root' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', '' );

/** Hostname của database */
define( 'DB_HOST', 'localhost' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Z,+uvpe.+c,=*dfakq[}GsS,cRp_nA_Z^w` X%&IXn@{4S95;M,R8q:%B%nW>G7q' );
define( 'SECURE_AUTH_KEY',  '[CW:h#VpMA$Tz1Xne%1u:[Q yh1cs4J|4:_5V|66c8wtUS($tKn4dh,]|Po]N,%x' );
define( 'LOGGED_IN_KEY',    'aPYduvWhnt6~IlNXb{AhXp?+t/88*q1{<{8l;g4Ur/o3:1%IcXFz?!4R2gbXy6 P' );
define( 'NONCE_KEY',        'q?,5WNUiE |H5xo;01JaU/}V<iJApW d8}/X6+Fi0phLL*pM9[{&eW-Ow)v&V1BF' );
define( 'AUTH_SALT',        'dk*Ip%3LSOX}KBsFMt_;c`i}wWvb|X@tg0FCVIBj5ZEI0~,kKWBuQb%~(qcSiNs)' );
define( 'SECURE_AUTH_SALT', 'uFB@HoEA.;8pXcN<92b1F2g-%?]$jq/otx]&BSF1$/eT0[,sIH+YtHLq`mv;)nn%' );
define( 'LOGGED_IN_SALT',   'KOX`LFR0<}}R%&,U+|ulU?p^(MCb]n<NjzN?Sd*Z.pt:u^32jYXI|jqF #y>]CO.' );
define( 'NONCE_SALT',       '6]ZU:K2V^BkN#9g0b[E}T>fFYyf-Bb2eVvaismRj.bJ8isno7LfwAo#7{EQCT2ph' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
