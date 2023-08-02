package pkg

import (
	log "github.com/sirupsen/logrus"
)

func (inst *Module) Enable() error {
	log.Infof("plugin is enabling...%s", name)

	log.Infof("plugin is enabled...%s", name)

	return nil
}

func (inst *Module) Disable() error {
	log.Infof("plugin is disabled...%s", name)
	return nil
}
