package com.mguidi.soa.validation;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import com.mguidi.soa.soa.Entities;
import com.mguidi.soa.soa.Entity;
import com.mguidi.soa.soa.Feature;
import com.mguidi.soa.soa.Model;
import com.mguidi.soa.soa.SoaPackage;
import com.mguidi.soa.validation.AbstractSOAValidator;
import java.util.HashSet;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.validation.Check;

@SuppressWarnings("all")
public class SOAValidator extends AbstractSOAValidator {
  @Check
  public void checkEntityNameIsUnique(final Entities entity) {
    EObject _eContainer = entity.eContainer();
    Model model = ((Model) _eContainer);
    EList<Entities> _entities = model.getEntities();
    Iterable<Entities> _filter = Iterables.<Entities>filter(_entities, Entities.class);
    for (final Entities e : _filter) {
      boolean _and = false;
      boolean _notEquals = (!Objects.equal(e, entity));
      if (!_notEquals) {
        _and = false;
      } else {
        String _name = e.getName();
        String _name_1 = entity.getName();
        boolean _equals = _name.equals(_name_1);
        _and = _equals;
      }
      if (_and) {
        this.error("Entity and Enum names have to be unique", SoaPackage.Literals.ENTITIES__NAME);
        return;
      }
    }
  }
  
  @Check
  public void checkEntityFeatureNameIsUnique(final Entity entity) {
    HashSet<String> set = new HashSet<String>();
    EList<Feature> _features = entity.getFeatures();
    for (final Feature e : _features) {
      String _name = e.getName();
      boolean _contains = set.contains(_name);
      if (_contains) {
        this.error("feature name have to be unique", SoaPackage.Literals.FEATURE__NAME);
        return;
      } else {
        String _name_1 = e.getName();
        set.add(_name_1);
      }
    }
  }
}
