enigma2-bouqueteditor
=====================

This is a little GUI written in Python that helps you managing your tv bouquets on an Enigma2 set top box. You will be presented the bouquets on the left hand side and a list of all services on the right hand side. Below the service list is a text entry field for search tearms: as you type into it the service list is filtered so you see only those services relevant. You can drag and drop service to the bouquet side, and there you can also reorder things by dragging and dropping items. Two buttons under the bouquet view allow you to add a new bouquet to the list, and to delete all selected items (services or whole bouquets).

The service and bouquet lists can be loaded directly from an Enigma2 box via ftp or from the local filesystem. Saving changes to an ftp location requires *lftp* to be installed.

Installation
------------

The programme is written in Python and uses Pyside (Qt) for the GUI. The following command should install all dependencies needed on a Debian/Ubuntu system:

::

  aptitude install python-pyside.qtgui pyside-tools make git lftp

MPlayer is recommended as it enables you to preview services. (Doubleclick on a service in the right hand side service list, and it will launch an MPlayer showing the service.)

::

  aptitude install mplayer

Now you can clone enigma2-bouqueteditor:

::

  git clone git://github.com/spacedentist/enigma2-bouqueteditor.git

Enter the newly created repository and execute *make*, which will generate the Python code from the ui description file:

::

  cd enigma2-bouqueteditor
  make

And this his how you launch the bouquet editor:

::

  ./e2-bouqueteditor -s BOX_HOSTNAME ftp://root@BOX_HOSTNAME/../var/etc/enigma2

You may want to edit your ~/.netrc file to list the ftp credentials of your set top box, so you will not be asked for passwords. Add this section to it:

::

  machine BOX_HOSTNAME
    login root
    password "PASSWORD"

