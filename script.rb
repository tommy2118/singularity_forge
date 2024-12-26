require 'fileutils'

# First batch of images
rename_map = {
 'IMG_2610.jpeg' => 'forge-setup-full.jpg',
 'IMG_2617.jpeg' => 'rough-tools-comparison.jpg',
 'IMG_2618.jpeg' => 'lawn-mower-blades.jpg',
 'IMG_2619.jpeg' => 'forge-fire-night.jpg',
 'IMG_2620.jpeg' => 'forge-tongs-tools.jpg',
 'IMG_2625.jpeg' => 'forge-anvil-stand.jpg',
 'IMG_2627.JPG' => 'anvil-setup.jpg',
 'IMG_2628.jpeg' => 'anvil-chain-mount.jpg',
 'IMG_2634.jpeg' => 'anvil-mount-detail.jpg',
 'IMG_2635.jpeg' => 'forging-action.jpg',
 'IMG_2637.jpeg' => 'blade-profile.jpg',
 'IMG_2638.jpeg' => 'blade-material.jpg',
 'IMG_2640.jpeg' => 'forged-blade.jpg',
 'IMG_2641.jpeg' => 'punch-mount.jpg',
 'IMG_2642.jpeg' => 'punch-mount-detail.jpg',
 'IMG_2643.jpeg' => 'anvil-chain-detail.jpg',
 'IMG_2651.jpeg' => 'raw-steel.jpg',
 'IMG_2654.jpeg' => 'forging-hammer.jpg',
 'IMG_2655.jpeg' => 'tools-anvil-setup.jpg',
 'IMG_2656.jpeg' => 'anvil-face-detail.jpg',

 # Additional images
 'IMG_2658.jpeg' => 'knife-blade-raw.jpg',
 'IMG_2661.jpeg' => 'knife-handle-forge.jpg',
 'IMG_2662.jpeg' => 'completed-knife-anvil.jpg',
 'IMG_2706.jpeg' => 'knife-blade-profile-1.jpg',
 'IMG_2707.jpeg' => 'knife-blade-profile-2.jpg',
 'IMG_4237.jpeg' => 'forge-flames.jpg',
 'IMG_4238.jpeg' => 'blacksmith-action.jpg'
}

FileUtils.mkdir_p 'assets/images'

rename_map.each do |old_name, new_name|
 begin
   FileUtils.mv old_name, "assets/images/#{new_name}"
   puts "Renamed #{old_name} to #{new_name}"
 rescue => e
   puts "Error renaming #{old_name}: #{e.message}"
 end
end
