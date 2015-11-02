package com.intersys.sqoop.driver.model.key;

public class TestKey implements Comparable<TestKey> {

	private Long _along;
	private Integer _anint;
	private Double _adouble;
	private Boolean _aboolean;
	private String _astring;
	private String _anotherstring;

	public TestKey(Long along, Integer anint, Double adouble, Boolean aboolean, String astring, String anotherstring) {
		super();
		this._along = along;
		this._anint = anint;
		this._adouble = adouble;
		this._aboolean = aboolean;
		this._astring = astring;
		this._anotherstring = anotherstring;
	}

	public Long getAlong() {
		return _along;
	}

	public Integer getAnint() {
		return _anint;
	}

	public Double getAdouble() {
		return _adouble;
	}

	public Boolean getAboolean() {
		return _aboolean;
	}

	public String getAstring() {
		return _astring;
	}

	public String getAnotherstring() {
		return _anotherstring;
	}

	@Override
	public int compareTo(TestKey other) {
		if (this == other) 
			return 0;
		if (other == null) 
			return -1;
		if (getClass() != other.getClass())
			return -1;
		int result;

		if ((_along == null) && (other._along == null)) {
			return 0;
		} else if (_along == null) {
			return -1;
		} else if (other._along == null) {
			return 1;
		} else {
			result = _along.compareTo(other._along);
			if (result != 0) {
				return result;
			}
		}

		if ((_anint == null) && (other._anint == null)) {
			return 0;
		} else if (_anint == null) {
			return -1;
		} else if (other._anint == null) {
			return 1;
		} else {
			result = _anint.compareTo(other._anint);
			if (result != 0) {
				return result;
			}
		}

		if ((_adouble == null) && (other._adouble == null)) {
			return 0;
		} else if (_adouble == null) {
			return -1;
		} else if (other._adouble == null) {
			return 1;
		} else {
			result = _adouble.compareTo(other._adouble);
			if (result != 0) {
				return result;
			}
		}

		if ((_aboolean == null) && (other._aboolean == null)) {
			return 0;
		} else if (_aboolean == null) {
			return -1;
		} else if (other._aboolean == null) {
			return 1;
		} else {
			result = _aboolean.compareTo(other._aboolean);
			if (result != 0) {
				return result;
			}
		}

		if ((_astring == null) && (other._astring == null)) {
			return 0;
		} else if (_astring == null) {
			return -1;
		} else if (other._astring == null) {
			return 1;
		} else {
			result = _astring.compareTo(other._astring);
			if (result != 0) {
				return result;
			}
		}

		if ((_anotherstring == null) && (other._anotherstring == null)) {
			return 0;
		} else if (_anotherstring == null) {
			return -1;
		} else if (other._anotherstring == null) {
			return 1;
		} else {
			result = _anotherstring.compareTo(other._anotherstring);
			if (result != 0) {
				return result;
			}
		}

		return 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((_along == null) ? 0 : _along.hashCode());
		result = prime * result + ((_anint == null) ? 0 : _anint.hashCode());
		result = prime * result + ((_adouble == null) ? 0 : _adouble.hashCode());
		result = prime * result + ((_aboolean == null) ? 0 : _aboolean.hashCode());
		result = prime * result + ((_astring == null) ? 0 : _astring.hashCode());
		result = prime * result + ((_anotherstring == null) ? 0 : _anotherstring.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) 
			return true;
		if (obj == null) 
			return false;
		if (getClass() != obj.getClass())
			return false;
		TestKey other = (TestKey) obj;

		if (_along == null) {
			if (other._along != null)
				return false;
		} else if (!_along.equals(other._along))
			return false;

		if (_anint == null) {
			if (other._anint != null)
				return false;
		} else if (!_anint.equals(other._anint))
			return false;

		if (_adouble == null) {
			if (other._adouble != null)
				return false;
		} else if (!_adouble.equals(other._adouble))
			return false;

		if (_aboolean == null) {
			if (other._aboolean != null)
				return false;
		} else if (!_aboolean.equals(other._aboolean))
			return false;

		if (_astring == null) {
			if (other._astring != null)
				return false;
		} else if (!_astring.equals(other._astring))
			return false;

		if (_anotherstring == null) {
			if (other._anotherstring != null)
				return false;
		} else if (!_anotherstring.equals(other._anotherstring))
			return false;


		return true;
	}

}
