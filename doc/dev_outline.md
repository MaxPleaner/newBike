**global config**

  - configured when the app is initially booted
  - determines shop name
  - determines global admin user (the user who can add/remove other admins)
  - determines feature set (individual components can be disabled)
  - on change hooks (what happens when a bike is marked as stolen, marked for sale, etc)

**features**

1. Shop-specific data
  - _User auth_
  - _Intake bike_
    - pictures
    - descriptions
    - privacy setting
  - _Intake customer_
  - _Update bike status_
    - ownership record
    - maintenance record (checklist)
    - status
      - on change hooks("when stolen", "when for sale", "when for rent", "when sold", "when finished maintenance", etc)
      - records can be pushed to the shared database
  - _Support_
    - email contact
  - Shop for-sale bikes
    - Should this attempt to prevent independent (not through shop) transactions?
2. Data shared between shops
  - _User bike list_
  - _Show stolen bikes_
  - _Show for-sale bikes_
    - Should this  attempt to prevent independent (not through shop) transactions?
  - _Add for-sale bike_
    - push targers:
      - sfyellowbike.org
      - social media
      - classifieds
  - _Bike for-rent_ (spinlister)
  - _Report stolen_
    - bike does not need to be in any shop database
    - push targets:
      - google groups (which groups?)
      - social media (facebook, twitter, nextdoor, etc?)
      - local police
  - _Search bike by attribute_

**Longview**

- image search (honestly this is probably going to be difficult)

**Not totally clear on this stuff**

1. non-profit vs for-profit version of website
2. privacy options - For the purposes of search, are all bikes from every shop pushed to the shared database?
3. "bike scrubber" feaure
4. 'for sale' - details of how this will work.

**Probably not possible**

image search (Unfortunately image-recognition is still pretty cutting-edge and I'm afraid this won't be feasible for bikes, which all look relativly similar)
