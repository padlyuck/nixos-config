{
  disko.devices = {
    disk = {
      main = {
        device = "/dev/sda";
	type = "disk";
	content = {
	  type = "gpt";
	  partitions = {
	    ESP = {
	      size = "512M";
	      type = "EF00";
	      content = {
                type = "filesystem";
		format = "vfat";
		mountpoint = "/boot";
		mountOptions = [ "umask=0077" ];
	      };
	    };
	    root = {
              size = "10G";
	      content = {
                type = "filesystem";
		format = "ext4";
		mountpoint = "/";
	      };
	    };
	    home = {
              size = "100%";
	      content = {  
                type = "filesystem";
                format = "ext4";
                mountpoint = "/home";
              };
	    };
	  };
	};
      };
    };
  };
}
