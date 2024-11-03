---

# Tow Script for FiveM

This script allows players to attach and detach vehicles to tow trucks by typing `/tow` while in a tow-capable vehicle. It works with the default GTA V tow trucks such as `flatbed`, `towtruck`, and `towtruck2`.

## Features
- **Attach a vehicle to a tow truck** with a single command.
- **Detach a vehicle from the tow truck** by re-entering the command.
- Chat notifications inform players of actions taken (attach/detach).

## Installation

1. **Download and Extract**: Download the script and extract the contents.

2. **Create a Folder**:
   - Create a new folder named `tow_script` (or your preferred name) in your FiveM server’s `resources` directory.
   
3. **Add Files**:
   - Place the following files in the `tow_script` folder:
     - `tow_script.lua`
     - `fxmanifest.lua`

   Your `tow_script` folder structure should look like this:
   ```
   tow_script/
   ├── fxmanifest.lua
   └── tow_script.lua
   ```

4. **Add to Server Configuration**:
   - Open your `server.cfg` file, located in the main server directory.
   - Add the following line to ensure the script loads when the server starts:
     ```
     start tow_script
     ```

5. **Restart Your Server**:
   - Restart your FiveM server to load the script.

## Usage

1. **Get in a Tow Truck**:
   - Enter a tow-capable vehicle, such as a `flatbed`, `towtruck`, or `towtruck2`.

2. **Find a Target Vehicle**:
   - Drive close to the vehicle you want to tow.

3. **Attach the Vehicle**:
   - Type `/tow` in chat to attach the nearby vehicle to your tow truck.

4. **Detach the Vehicle**:
   - Type `/tow` again to detach the vehicle.

## Notes

- **Tow Trucks Only**: The script only works when the player is in a tow-capable vehicle.
- **Distance Limit**: The vehicle to be towed must be within close range of the tow truck.

## Troubleshooting

- **Vehicle Not Attaching**: Ensure you are using a tow-capable vehicle and that there is a vehicle close by to attach.
- **Command Not Working**: Double-check that the resource is added in `server.cfg` and restart the server.

## Credits

**Author**: Your Name  
**Version**: 1.0.0  
**Description**: Simple tow script for FiveM servers.

---

By following these steps, you should be able to successfully install and use the tow script on your FiveM server!