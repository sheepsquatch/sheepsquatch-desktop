SUBDIRS = m4 po

docxbmdir       = $(docdir)/xbm
themedir        = $(datadir)/themes
localedir       = $(datadir)/locale
configdir       = $(sysconfdir)/xdg
rcdir           = $(configdir)/sheep
xsessionsdir    = $(datadir)/xsessions
gnomesessiondir = $(datadir)/gnome-session/sessions
gnomewmfilesdir = $(datadir)/gnome/wm-properties
pkgconfigdir    = $(libdir)/pkgconfig
obtpubincludedir= $(includedir)/sheep/@OBT_VERSION@/obt
rrpubincludedir = $(includedir)/sheep/@RR_VERSION@/obrender
pixmapdir       = $(datadir)/pixmaps
xsddir          = $(datadir)/sheep
appsdir         = $(datadir)/applications

theme = Adapta-Nokto-Maia
AUTOMAKE_OPTIONS = subdir-objects foreign

ACLOCAL_AMFLAGS = -I m4

INCLUDES = -I.

check_PROGRAMS = \
	obrender/rendertest

lib_LTLIBRARIES = \
	obt/libobt.la \
	obrender/libobrender.la

bin_PROGRAMS = \
	sheep/sheep \
	tools/gdm-control/gdm-control \
	tools/gnome-panel-control/gnome-panel-control \
	tools/obxprop/obxprop

noinst_PROGRAMS = \
	obt/obt_unittests

nodist_bin_SCRIPTS = \
	data/xsession/sheep-session

dist_rc_SCRIPTS = \
	data/environment

nodist_rc_SCRIPTS = \
	data/autostart/autostart

dist_libexec_SCRIPTS = \
	data/autostart/sheep-xdg-autostart

nodist_libexec_SCRIPTS = \
	data/autostart/sheep-autostart


## obrender ##

obrender_rendertest_CPPFLAGS = \
	$(PANGO_CFLAGS) \
	$(GLIB_CFLAGS) \
	-DG_LOG_DOMAIN=\"RenderTest\"
obrender_rendertest_LDADD = \
	obt/libobt.la \
	obrender/libobrender.la \
	$(GLIB_LIBS) \
	$(PANGO_LIBS) \
	$(XML_LIBS) \
	$(X_LIBS)
obrender_rendertest_SOURCES = obrender/test.c

obrender_libobrender_la_CPPFLAGS = \
	$(X_CFLAGS) \
	$(GLIB_CFLAGS) \
	$(XML_CFLAGS) \
	$(PANGO_CFLAGS) \
	$(IMLIB2_CFLAGS) \
	$(LIBRSVG_CFLAGS) \
	-DG_LOG_DOMAIN=\"ObRender\" \
	-DDEFAULT_THEME=\"$(theme)\"
obrender_libobrender_la_LDFLAGS = \
	-version-info $(RR_CURRENT):$(RR_REVISION):$(RR_AGE)
obrender_libobrender_la_LIBADD = \
	obt/libobt.la \
	$(X_LIBS) \
	$(PANGO_LIBS) \
	$(GLIB_LIBS) \
	$(IMLIB2_LIBS) \
	$(LIBRSVG_LIBS) \
	$(XML_LIBS)
obrender_libobrender_la_SOURCES = \
	gettext.h \
	obrender/button.c \
	obrender/color.h \
	obrender/color.c \
	obrender/font.h \
	obrender/font.c \
	obrender/geom.h \
	obrender/gradient.h \
	obrender/gradient.c \
	obrender/icon.h \
	obrender/image.h \
	obrender/image.c \
	obrender/imagecache.h \
	obrender/imagecache.c \
	obrender/instance.h \
	obrender/instance.c \
	obrender/mask.h \
	obrender/mask.c \
	obrender/render.h \
	obrender/render.c \
	obrender/theme.h \
	obrender/theme.c

## obt ##

obt_libobt_la_CPPFLAGS = \
	$(X_CFLAGS) \
	$(XINERAMA_CFLAGS) \
	$(XKB_CFLAGS) \
	$(XRANDR_CFLAGS) \
	$(XSHAPE_CFLAGS) \
	$(XSYNC_CFLAGS) \
	$(GLIB_CFLAGS) \
	$(XML_CFLAGS) \
	-DG_LOG_DOMAIN=\"Obt\" \
	-DLOCALEDIR=\"$(localedir)\" \
	-DDATADIR=\"$(datadir)\" \
	-DCONFIGDIR=\"$(configdir)\"
obt_libobt_la_LDFLAGS = \
	-version-info $(OBT_CURRENT):$(OBT_REVISION):$(OBT_AGE)
obt_libobt_la_LIBADD = \
	$(X_LIBS) \
	$(XINERAMA_LIBS) \
	$(XKB_LIBS) \
	$(XRANDR_LIBS) \
	$(XSHAPE_LIBS) \
	$(XSYNC_LIBS) \
	$(GLIB_LIBS) \
	$(XML_LIBS)
obt_libobt_la_SOURCES = \
	obt/bsearch.h \
	obt/display.h \
	obt/display.c \
	obt/internal.h \
	obt/keyboard.h \
	obt/keyboard.c \
	obt/xml.h \
	obt/xml.c \
	obt/ddparse.h \
	obt/ddparse.c \
	obt/link.h \
	obt/link.c \
	obt/paths.h \
	obt/paths.c \
	obt/prop.h \
	obt/prop.c \
	obt/signal.h \
	obt/signal.c \
	obt/util.h \
	obt/xqueue.h \
	obt/xqueue.c

## sheep ##

sheep_sheep_CPPFLAGS = \
	$(SM_CFLAGS) \
	$(X_CFLAGS) \
	$(XCURSOR_CFLAGS) \
	$(SM_CFLAGS) \
	$(PANGO_CFLAGS) \
	$(GLIB_CFLAGS) \
	$(LIBSN_CFLAGS) \
	$(XML_CFLAGS) \
	-DLOCALEDIR=\"$(localedir)\" \
	-DDATADIR=\"$(datadir)\" \
	-DCONFIGDIR=\"$(configdir)\" \
	-DG_LOG_DOMAIN=\"Openbox\"
sheep_sheep_LDADD = \
	$(XINERAMA_LIBS) \
	$(XRANDR_LIBS) \
	$(SM_LIBS) \
	$(GLIB_LIBS) \
	$(X_LIBS) \
	$(XCURSOR_LIBS) \
	$(LIBSN_LIBS) \
	$(XML_LIBS) \
	$(EFENCE_LIBS) \
	$(LIBINTL) \
	obrender/libobrender.la \
	obt/libobt.la
sheep_sheep_LDFLAGS = -export-dynamic
sheep_sheep_SOURCES = \
	gettext.h \
	sheep/actions/all.c \
	sheep/actions/all.h \
	sheep/actions/addremovedesktop.c \
	sheep/actions/breakchroot.c \
	sheep/actions/close.c \
	sheep/actions/cyclewindows.c \
	sheep/actions/debug.c \
	sheep/actions/decorations.c \
	sheep/actions/desktop.c \
	sheep/actions/dock.c \
	sheep/actions/dockautohide.c \
	sheep/actions/directionalwindows.c \
	sheep/actions/execute.c \
	sheep/actions/exit.c \
	sheep/actions/focus.c \
	sheep/actions/focustobottom.c \
	sheep/actions/fullscreen.c \
	sheep/actions/growtoedge.c \
	sheep/actions/iconify.c \
	sheep/actions/if.c \
	sheep/actions/kill.c \
	sheep/actions/layer.c \
	sheep/actions/lower.c \
	sheep/actions/maximize.c \
	sheep/actions/move.c \
	sheep/actions/moverelative.c \
	sheep/actions/moveresizeto.c \
	sheep/actions/movetoedge.c \
	sheep/actions/omnipresent.c \
	sheep/actions/raise.c \
	sheep/actions/raiselower.c \
	sheep/actions/reconfigure.c \
	sheep/actions/resize.c \
	sheep/actions/resizerelative.c \
	sheep/actions/restart.c \
	sheep/actions/shade.c \
	sheep/actions/shadelowerraise.c \
	sheep/actions/showdesktop.c \
	sheep/actions/showmenu.c \
	sheep/actions/unfocus.c \
	sheep/actions.c \
	sheep/actions.h \
	sheep/client.c \
	sheep/client.h \
	sheep/client_list_menu.c \
	sheep/client_list_menu.h \
	sheep/client_list_combined_menu.c \
	sheep/client_list_combined_menu.h \
	sheep/client_menu.c \
	sheep/client_menu.h \
	sheep/config.c \
	sheep/config.h \
	sheep/debug.c \
	sheep/debug.h \
	sheep/dock.c \
	sheep/dock.h \
	sheep/event.c \
	sheep/event.h \
	sheep/focus.c \
	sheep/focus.h \
	sheep/focus_cycle.c \
	sheep/focus_cycle.h \
	sheep/focus_cycle_indicator.c \
	sheep/focus_cycle_indicator.h \
	sheep/focus_cycle_popup.c \
	sheep/focus_cycle_popup.h \
	sheep/frame.c \
	sheep/frame.h \
	sheep/framerender.c \
	sheep/framerender.h \
	sheep/geom.h \
	sheep/grab.c \
	sheep/grab.h \
	sheep/group.c \
	sheep/group.h \
	sheep/keyboard.c \
	sheep/keyboard.h \
	sheep/keytree.c \
	sheep/keytree.h \
	sheep/menuframe.c \
	sheep/menuframe.h \
	sheep/menu.c \
	sheep/menu.h \
	sheep/misc.h \
	sheep/mouse.c \
	sheep/mouse.h \
	sheep/moveresize.c \
	sheep/moveresize.h \
	sheep/mwm.h \
	sheep/sheep.c \
	sheep/sheep.h \
	sheep/ping.c \
	sheep/ping.h \
	sheep/place.c \
	sheep/place.h \
	sheep/place_overlap.c \
	sheep/place_overlap.h \
	sheep/prompt.c \
	sheep/prompt.h \
	sheep/popup.c \
	sheep/popup.h \
	sheep/resist.c \
	sheep/resist.h \
	sheep/screen.c \
	sheep/screen.h \
	sheep/session.c \
	sheep/session.h \
	sheep/stacking.c \
	sheep/stacking.h \
	sheep/startupnotify.c \
	sheep/startupnotify.h \
	sheep/translate.c \
	sheep/translate.h \
	sheep/window.c \
	sheep/window.h

## obt_unittests ##

obt_obt_unittests_CPPFLAGS = \
	$(GLIB_CFLAGS) \
	-DLOCALEDIR=\"$(localedir)\" \
	-DDATADIR=\"$(datadir)\" \
	-DCONFIGDIR=\"$(configdir)\" \
	-DG_LOG_DOMAIN=\"Obt-Unittests\"
obt_obt_unittests_LDADD = \
	$(GLIB_LIBS) \
	obt/libobt.la
obt_obt_unittests_LDFLAGS = -export-dynamic
obt_obt_unittests_SOURCES = \
	obt/unittest_base.h \
	obt/unittest_base.c \
	obt/bsearch_unittest.c

## gnome-panel-control ##

tools_gnome_panel_control_gnome_panel_control_CPPFLAGS = \
	$(X_CFLAGS)
tools_gnome_panel_control_gnome_panel_control_LDADD = \
	$(X_LIBS)
tools_gnome_panel_control_gnome_panel_control_SOURCES = \
	tools/gnome-panel-control/gnome-panel-control.c

## obxprop ##

tools_obxprop_obxprop_CPPFLAGS = \
	$(GLIB_CFLAGS) \
	$(X_CFLAGS)
tools_obxprop_obxprop_LDADD = \
	$(GLIB_LIBS) \
	$(X_LIBS)
tools_obxprop_obxprop_SOURCES = \
	tools/obxprop/obxprop.c

## gdm-control ##

tools_gdm_control_gdm_control_CPPFLAGS = \
	$(XAUTH_CFLAGS) \
	$(X_CFLAGS) \
	$(GLIB_CFLAGS)
tools_gdm_control_gdm_control_LDADD = \
	$(XAUTH_LIBS) \
	$(X_LIBS) \
	$(GLIB_LIBS)
tools_gdm_control_gdm_control_SOURCES = \
	tools/gdm-control/gdm-control.c


## default button masks ##
dist_docxbm_DATA = \
        data/xbm/bullet.xbm \
        data/xbm/close.xbm \
        data/xbm/desk_toggled.xbm \
        data/xbm/desk.xbm \
        data/xbm/iconify.xbm \
        data/xbm/max_toggled.xbm \
        data/xbm/max.xbm \
        data/xbm/shade_toggled.xbm \
        data/xbm/shade.xbm


## themes ##

sheepsquatch_themedir = $(themedir)/Adapta-Nokto-Maia/sheep-3
dist_sheepsquatch_theme_DATA= \
	themes/Adapta-Nokto-Maia/sheep-3/themerc

## public headers ##

rrpubinclude_HEADERS = \
	obrender/color.h \
	obrender/font.h \
	obrender/geom.h \
	obrender/gradient.h \
	obrender/image.h \
	obrender/instance.h \
	obrender/mask.h \
	obrender/render.h \
	obrender/theme.h \
	obrender/version.h

obtpubinclude_HEADERS = \
	obt/link.h \
	obt/display.h \
	obt/keyboard.h \
	obt/xml.h \
	obt/paths.h \
	obt/prop.h \
	obt/signal.h \
	obt/util.h \
	obt/version.h \
	obt/xqueue.h

nodist_pkgconfig_DATA = \
	obrender/obrender-3.5.pc \
	obt/obt-3.5.pc

## data ##

dist_apps_DATA = \
	data/sheep.desktop

dist_pixmap_DATA = \
	data/sheep.png

dist_rc_DATA = \
	data/rc.xml \
	data/menu.xml

edit = $(SED) \
	-e 's!@version\@!$(VERSION)!' \
	-e 's!@configdir\@!$(configdir)!' \
	-e 's!@rcdir\@!$(rcdir)!' \
	-e 's!@libexecdir\@!$(libexecdir)!' \
	-e 's!@bindir\@!$(bindir)!'

data/autostart/autostart: $(top_srcdir)/data/autostart/autostart.in Makefile
	@echo make: creating $@
	@test -d $(shell dirname $(top_builddir)/$@) || \
	  mkdir $(shell dirname $(top_builddir)/$@)
	@$(edit) $< >$(top_builddir)/$@

data/autostart/sheep-autostart: $(top_srcdir)/data/autostart/sheep-autostart.in Makefile
	@echo make: creating $@
	@test -d $(shell dirname $(top_builddir)/$@) || \
	  mkdir $(shell dirname $(top_builddir)/$@)
	@$(edit) $< >$(top_builddir)/$@

%.desktop: %.desktop.in Makefile
	@echo make: creating $@
	@$(edit) $< >$@	

%-session: %-session.in Makefile
	@echo make: creating $@
	@$(edit) $< >$@	

%.1: %.1.in Makefile
	@echo make: creating $@
	@$(edit) $< >$@	

dist_gnomewmfiles_DATA = \
	data/gnome-wm-properties/sheep.desktop

nodist_xsessions_DATA = \
	data/xsession/sheep.desktop

dist_noinst_DATA = \
	data/rc.xsd \
	data/menu.xsd \
	data/autostart/autostart.in \
	data/autostart/sheep-autostart.in \
	data/xsession/sheep.desktop.in \
	data/xsession/sheep-session.in \
	doc/sheep.1.sgml \
	doc/sheep.1.in \
	doc/sheep-session.1.sgml \
	doc/sheep-session.1.in \
	doc/obxprop.1.sgml \
	doc/obxprop.1.in \
	obrender/version.h.in \
	obrender/obrender-3.5.pc.in \
	obt/obt-3.5.pc.in \
	obt/version.h.in \
	tools/themeupdate/themeupdate.py \
	tests/hideshow.py \
	tests/Makefile \
	tests/aspect.c \
	tests/fullscreen.c \
	tests/grav.c \
	tests/grouptran.c \
	tests/icons.c \
	tests/modal2.c \
	tests/modal3.c \
	tests/modal.c \
	tests/noresize.c \
	tests/override.c \
	tests/positioned.c \
	tests/strut.c \
	tests/title.c \
	tests/urgent.c

dist_doc_DATA = \
	COMPLIANCE \
	AUTHORS \
	CHANGELOG \
	COPYING \
	data/rc.xsd \
	data/menu.xsd \
	doc/rc-mouse-focus.xml


EXTRA_DIST = \
	config.rpath

# make clean doesn't delete these for some reason, even though they are
# built by make
CLEANFILES = \
	$(nodist_bin_SCRIPTS) \
	$(nodist_xsessions_DATA) \
	$(nodist_rc_SCRIPTS) \
	$(nodist_libexec_SCRIPTS)

#doc:
#       $(MAKE) -$(MAKEFLAGS) -C doc/doxygen doc

distclean-local:
	for d in . m4 po obrender parser obt sheep; do \
		for p in core core.* gmon.out *\~ *.orig *.rej .\#*; do \
			rm -f "$$d/$$p"; \
		done \
	done

.PHONY: doc
