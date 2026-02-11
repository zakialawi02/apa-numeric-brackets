<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" class="in-text" demote-non-dropping-particle="never" initialize-with=". " names-delimiter=", " page-range-format="expanded" version="1.0">
  <info>
    <title>Custom APA (Bracketed, Non-Superscript, Vol.)</title>
    <title-short>Custom APA Bracketed</title-short>
    <id>http://www.zotero.org/styles/custom-apa-bracketed-non-superscript</id>
    <link href="http://www.zotero.org/styles/custom-apa-bracketed-non-superscript" rel="self"/>
    <link href="http://www.zotero.org/styles/apa" rel="template"/>
    <author>
      <name>Brenton M. Wiernik</name>
      <email>zotero@wiernik.org</email>
    </author>
    <author>
      <name>Andrew Dunning</name>
    </author>
    <category citation-format="numeric"/>
    <category field="generic-base"/>
    <summary>Modified APA Style with bracketed inline normal-text citations (e.g., [1][2]), bracketed bibliography numbers, "and" instead of "&amp;", and "Vol." labels.</summary>
    <updated>2026-02-11T00:00:00+00:00</updated>
    <rights license="http://creativecommons.org/licenses/by-sa/3.0/">This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 License</rights>
  </info>
  <locale xml:lang="en">
    <terms>
      <term name="ad"> C.E.</term>
      <term name="bc"> B.C.E.</term>
      <term form="short" name="circa">ca.</term>
      <term name="guest">
        <single>guest expert</single>
        <multiple>guest experts</multiple>
      </term>
      <term form="short" name="illustrator">illus.</term>
      <term form="short" name="interviewer">
        <single>interviewer</single>
        <multiple>interviewers</multiple>
      </term>
      <term form="short" name="legislation">Pub. L.</term>
      <term name="manuscript">unpublished manuscript</term>
      <term form="verb" name="performer">recorded by</term>
      <term name="post">online post</term>
      <term name="review-of">review of the</term>
      <term form="short" name="review-of">review of</term>
      <term name="software">computer software</term>
      <term form="short" name="supplement">
        <single>suppl.</single>
        <multiple>suppls.</multiple>
      </term>
    </terms>
  </locale>
  <locale xml:lang="da">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="de">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="es">
    <terms>
      <term name="from">de</term>
    </terms>
  </locale>
  <locale xml:lang="fr">
    <terms>
      <term form="short" name="editor">
        <single>éd.</single>
        <multiple>éds.</multiple>
      </term>
    </terms>
  </locale>
  <locale xml:lang="nb">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="nl">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="nn">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  <locale xml:lang="pl">
    <terms>
      <term name="et-al">i in.</term>
    </terms>
  </locale>
  <locale xml:lang="ro">
    <terms>
      <term name="et-al">et al.</term>
    </terms>
  </locale>
  
  <macro name="label-chapter-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="chapter-number" type="song">
          <text text-case="capitalize-first" value="track"/>
        </if>
        <else-if is-numeric="chapter-number">
          <label text-case="capitalize-first" variable="chapter-number"/>
        </else-if>
      </choose>
      <text variable="chapter-number"/>
    </group>
  </macro>
  <macro name="label-edition">
    <group delimiter=" ">
      <choose>
        <if is-numeric="edition">
          <number form="ordinal" variable="edition"/>
          <label form="short" variable="edition"/>
        </if>
        <else>
          <text variable="edition"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="label-issue">
    <group delimiter=" ">
      <label text-case="capitalize-first" variable="issue"/>
      <text variable="issue"/>
    </group>
  </macro>
  <macro name="label-locator">
    <group delimiter=" ">
      <choose>
        <if locator="page">
          <label form="short" variable="locator"/>
        </if>
        <else-if match="any" type="bill hearing legal_case legislation regulation treaty">
          <choose>
            <if locator="chapter paragraph section" match="any">
              <label form="symbol" variable="locator"/>
            </if>
            <else>
              <label text-case="capitalize-first" variable="locator"/>
            </else>
          </choose>
        </else-if>
        <else-if locator="paragraph">
          <label form="short" variable="locator"/>
        </else-if>
        <else-if is-numeric="locator">
          <label text-case="capitalize-first" variable="locator"/>
        </else-if>
        <else-if locator="chapter line verse" match="any"/>
        <else>
          <label text-case="capitalize-first" variable="locator"/>
        </else>
      </choose>
      <text variable="locator"/>
    </group>
  </macro>
  <macro name="label-number">
    <group delimiter=" ">
      <choose>
        <if type="standard"/>
        <else-if is-numeric="number" match="any" type="legislation patent regulation">
          <label form="short" text-case="capitalize-first" variable="number"/>
        </else-if>
      </choose>
      <text text-case="capitalize-first" variable="number"/>
    </group>
  </macro>
  <macro name="label-number-capitalized">
    <text macro="label-number"/>
  </macro>
  <macro name="label-number-article">
    <group delimiter=" ">
      <text term="article-locator" text-case="capitalize-first"/>
      <text variable="number"/>
    </group>
  </macro>
  <macro name="label-number-of-volumes">
    <group delimiter=" ">
      <choose>
        <if is-numeric="number-of-volumes">
          <label form="short" text-case="capitalize-first" variable="number-of-volumes"/>
          <group>
            <text prefix="1" term="page-range-delimiter"/>
            <number variable="number-of-volumes"/>
          </group>
        </if>
        <else>
          <text variable="number-of-volumes"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="label-page">
    <group delimiter=" ">
      <label form="short" variable="page"/>
      <text variable="page"/>
    </group>
  </macro>
  <macro name="label-part-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="part-number">
          <text form="short" term="part" text-case="capitalize-first"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="part-number"/>
    </group>
  </macro>
  <macro name="label-section-symbol">
    <group delimiter=" ">
      <label form="symbol" variable="section"/>
      <text variable="section"/>
    </group>
  </macro>
  <macro name="label-supplement-number">
    <group delimiter=" ">
      <choose>
        <if is-numeric="supplement-number">
          <text form="short" term="supplement" text-case="capitalize-first"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="supplement-number"/>
    </group>
  </macro>
  <macro name="label-version">
    <group delimiter=" ">
      <label text-case="capitalize-first" variable="version"/>
      <text variable="version"/>
    </group>
  </macro>
  <macro name="label-volume">
    <group delimiter=" ">
      <choose>
        <if is-numeric="volume">
          <label form="short" text-case="capitalize-first" variable="volume"/>
        </if>
      </choose>
      <text text-case="capitalize-first" variable="volume"/>
    </group>
  </macro>
  <macro name="author">
    <names variable="composer">
      <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
      <label form="short" prefix=" (" suffix=")" text-case="title"/>
      <substitute>
        <names variable="author"/>
        <names variable="illustrator"/>
        <choose>
          <if type="broadcast">
            <names variable="script-writer director">
              <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
          </if>
        </choose>
        <names variable="director">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="guest host">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="producer">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <choose>
          <if match="any" type="entry-dictionary entry-encyclopedia">
            <text variable="publisher"/>
          </if>
        </choose>
        <choose>
          <if match="none" variable="container-title"/>
          <else-if match="any" type="book classic entry entry-dictionary entry-encyclopedia">
            <text macro="author-title-substitute"/>
          </else-if>
        </choose>
        <names variable="executive-producer">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="series-creator">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="editor-translator"/>
        <names variable="editor"/>
        <names variable="editorial-director"/>
        <names variable="compiler">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <choose>
          <if match="any" type="event performance speech">
            <names variable="chair">
              <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
            <names variable="organizer">
              <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
              <label prefix=" (" suffix=")" text-case="title"/>
            </names>
          </if>
        </choose>
        <names variable="curator">
          <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          <label prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="collection-editor"/>
        <choose>
          <if match="any" type="software webpage">
            <text variable="publisher"/>
          </if>
          <else-if type="standard">
            <text variable="authority"/>
          </else-if>
        </choose>
        <text macro="author-title-substitute"/>
      </substitute>
    </names>
  </macro>
  <macro name="author-and-contributors">
    <group delimiter=" ">
      <text macro="author"/>
      <choose>
        <if match="none" variable="author compiler composer editor editor-translator illustrator"/>
        <else-if match="any" type="book musical_score pamphlet report standard">
          <names prefix="(" suffix=")" variable="contributor">
            <label form="verb" suffix=" "/>
            <name and="text" delimiter-precedes-last="always" name-as-sort-order="all"/>
          </names>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="author-title-substitute">
    <choose>
      <if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
        <choose>
          <if variable="reviewed-genre title">
            <text macro="title"/>
          </if>
          <else-if variable="reviewed-title title">
            <text macro="title"/>
          </else-if>
          <else>
            <text macro="title-and-descriptions"/>
          </else>
        </choose>
      </if>
      <else-if variable="title">
        <group delimiter=" ">
          <text macro="title"/>
          <text macro="identifier"/>
        </group>
      </else-if>
      <else>
        <text macro="title-and-descriptions"/>
      </else>
    </choose>
  </macro>
  <macro name="date">
    <group delimiter="-" prefix="(" suffix=")">
      <choose>
        <if variable="issued">
          <group delimiter=", ">
            <group>
              <text macro="date-issued-year"/>
              <text variable="year-suffix"/>
            </group>
            <choose>
              <if match="any" type="article-magazine article-newspaper broadcast collection document event motion_picture pamphlet performance personal_communication post post-weblog song speech webpage">
                <text macro="date-issued-month-day"/>
              </if>
              <else-if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume"/>
              <else-if match="any" type="interview paper-conference">
                <text macro="date-issued-month-day"/>
              </else-if>
            </choose>
          </group>
        </if>
        <else-if variable="status">
          <text text-case="lowercase" variable="status"/>
          <text variable="year-suffix"/>
        </else-if>
        <else>
          <text form="short" term="no date"/>
          <text variable="year-suffix"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="date-event-full">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="event-date">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date form="text" variable="event-date"/>
    </group>
  </macro>
  <macro name="date-issued-full">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="issued">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date form="text" variable="issued"/>
    </group>
  </macro>
  <macro name="date-issued-month-day">
    <date variable="issued">
      <date-part name="month"/>
      <date-part name="day" prefix=" "/>
    </date>
  </macro>
  <macro name="date-issued-year">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="issued">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date date-parts="year" form="numeric" variable="issued"/>
    </group>
  </macro>
  <macro name="date-original-year">
    <group delimiter=" ">
      <choose>
        <if is-uncertain-date="original-date">
          <text form="short" term="circa"/>
        </if>
      </choose>
      <date date-parts="year" form="numeric" variable="original-date"/>
    </group>
  </macro>
  <macro name="title-and-descriptions">
    <group delimiter=" ">
      <choose>
        <if variable="title">
          <text macro="title"/>
          <text macro="identifier"/>
          <text macro="description"/>
        </if>
        <else-if match="any" type="bill report">
          <text macro="identifier-number"/>
          <text macro="description"/>
          <text macro="identifier"/>
        </else-if>
        <else>
          <text macro="description"/>
          <text macro="identifier"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="title">
    <choose>
      <if match="any" type="post webpage">
        <text font-style="italic" macro="title-and-part-filter-review"/>
      </if>
      <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <text macro="title-serial"/>
      </else-if>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text macro="title-monographic"/>
      </else-if>
      <else-if match="any" type="interview paper-conference">
        <text macro="title-serial"/>
      </else-if>
      <else>
        <text macro="title-monographic"/>
      </else>
    </choose>
  </macro>
  <macro name="title-and-part-filter-review">
    <choose>
      <if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
        <choose>
          <if variable="reviewed-genre title">
            <text macro="title-and-part-title"/>
          </if>
          <else-if variable="reviewed-title title">
            <text macro="title-and-part-title"/>
          </else-if>
        </choose>
      </if>
      <else>
        <text macro="title-and-part-title"/>
      </else>
    </choose>
  </macro>
  <macro name="title-and-part-title">
    <group delimiter=": ">
      <text variable="title"/>
      <text macro="title-part"/>
    </group>
  </macro>
  <macro name="title-and-volume-title">
    <group delimiter=": ">
      <text variable="title"/>
      <text macro="title-volume"/>
    </group>
  </macro>
  <macro name="title-monographic">
    <choose>
      <if variable="container-title">
        <text variable="title"/>
      </if>
      <else>
        <text font-style="italic" macro="title-and-volume-title"/>
      </else>
    </choose>
  </macro>
  <macro name="title-part">
    <choose>
      <if variable="part-title">
        <group delimiter=". ">
          <text macro="label-part-number"/>
          <text text-case="capitalize-first" variable="part-title"/>
        </group>
      </if>
      <else-if is-numeric="part-number"/>
      <else>
        <text macro="label-part-number"/>
      </else>
    </choose>
  </macro>
  <macro name="title-serial">
    <choose>
      <if variable="container-title">
        <text macro="title-and-part-filter-review"/>
      </if>
      <else>
        <text font-style="italic" macro="title-and-part-filter-review"/>
      </else>
    </choose>
  </macro>
  <macro name="title-volume">
    <group delimiter=", ">
      <choose>
        <if variable="volume-title">
          <group delimiter=": ">
            <group delimiter=". ">
              <text macro="label-volume"/>
              <text variable="volume-title"/>
            </group>
            <text macro="title-part"/>
          </group>
        </if>
        <else-if variable="part-title">
          <text macro="label-volume"/>
          <text macro="title-part"/>
        </else-if>
        <else-if is-numeric="part-number volume"/>
        <else-if is-numeric="part-number" variable="volume">
          <text macro="label-volume"/>
        </else-if>
        <else-if is-numeric="volume" variable="part-number">
          <text macro="label-part-number"/>
        </else-if>
        <else-if is-numeric="part-number"/>
        <else-if is-numeric="volume"/>
        <else>
          <text macro="label-volume"/>
          <text macro="label-part-number"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="identifier">
    <group delimiter="; " prefix="(" suffix=")">
      <choose>
        <if type="patent">
          <text macro="identifier-patent"/>
        </if>
        <else-if match="any" type="post webpage">
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if type="report" variable="container-title">
          <text macro="identifier-contributors"/>
        </else-if>
        <else-if type="report" variable="title">
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if type="report">
          <text macro="identifier-contributors"/>
          <text macro="identifier-monographic"/>
        </else-if>
        <else-if variable="container-title">
          <choose>
            <if match="none" variable="genre title">
              <text macro="label-chapter-number"/>
            </if>
          </choose>
          <text macro="identifier-contributors"/>
          <choose>
            <if match="any" type="broadcast graphic map motion_picture">
              <text macro="identifier-number"/>
            </if>
          </choose>
          <text macro="identifier-serial"/>
        </else-if>
        <else>
          <text macro="identifier-contributors"/>
          <text macro="identifier-number"/>
          <text macro="identifier-monographic"/>
          <text macro="identifier-serial"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="identifier-contributors">
    <choose>
      <if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <text macro="identifier-contributors-serial"/>
      </if>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text macro="identifier-contributors-monographic"/>
      </else-if>
      <else-if match="any" type="interview paper-conference">
        <text macro="identifier-contributors-serial"/>
      </else-if>
      <else>
        <text macro="identifier-contributors-monographic"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-contributors-monographic">
    <group delimiter="; ">
      <choose>
        <if variable="title">
          <names variable="interviewer">
            <name and="text"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
        </if>
      </choose>
      <choose>
        <if match="any" type="post webpage">
          <names variable="container-author">
            <label form="verb-short" suffix=" " text-case="title"/>
            <name and="text"/>
          </names>
          <names delimiter="; " variable="editor translator">
            <name and="text"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <names delimiter="; " variable="illustrator narrator">
            <name and="text"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <names delimiter="; " variable="compiler chair organizer curator series-creator executive-producer">
            <name and="text"/>
            <label prefix=", " text-case="title"/>
          </names>
        </if>
        <else>
          <names delimiter="; " variable="illustrator narrator">
            <name and="text"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
          <choose>
            <if variable="container-title editor-translator"/>
            <else-if variable="container-title">
              <names delimiter="; " variable="translator">
                <name and="text"/>
                <label form="short" prefix=", " text-case="title"/>
              </names>
            </else-if>
            <else>
              <names variable="container-author">
                <label form="verb-short" suffix=" " text-case="title"/>
                <name and="text"/>
              </names>
              <names delimiter="; " variable="editor translator">
                <name and="text"/>
                <label form="short" prefix=", " text-case="title"/>
              </names>
              <names delimiter="; " variable="compiler chair organizer curator series-creator executive-producer">
                <name and="text"/>
                <label prefix=", " text-case="title"/>
              </names>
            </else>
          </choose>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="identifier-contributors-serial">
    <group delimiter="; ">
      <choose>
        <if variable="title">
          <names delimiter="; " variable="interviewer">
            <name and="text"/>
            <label form="short" prefix=", " text-case="title"/>
          </names>
        </if>
      </choose>
      <names delimiter="; " variable="translator narrator">
        <name and="text"/>
        <label form="short" prefix=", " text-case="title"/>
      </names>
    </group>
  </macro>
  <macro name="identifier-locators">
    <choose>
      <if variable="page">
        <text macro="label-page"/>
      </if>
      <else-if variable="chapter-number genre">
        <text macro="label-chapter-number"/>
      </else-if>
      <else-if variable="chapter-number title">
        <text macro="label-chapter-number"/>
      </else-if>
    </choose>
  </macro>
  <macro name="identifier-monographic">
    <choose>
      <if match="any" type="article-journal article-magazine article-newspaper broadcast event patent performance periodical post post-weblog review review-book speech webpage"/>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text macro="identifier-monographic-item"/>
      </else-if>
      <else-if match="any" type="interview paper-conference"/>
      <else>
        <text macro="identifier-monographic-item"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-monographic-item">
    <group delimiter=", ">
      <text macro="label-version"/>
      <text macro="label-edition"/>
      <text macro="identifier-series"/>
      <text macro="label-supplement-number"/>
      <text macro="identifier-number-volume"/>
      <text macro="identifier-number-part"/>
      <text macro="label-issue"/>
      <text macro="identifier-locators"/>
    </group>
  </macro>
  <macro name="identifier-number">
    <group delimiter=" ">
      <choose>
        <if type="thesis" variable="genre">
          <text text-case="capitalize-first" value="publication"/>
        </if>
        <else-if variable="number">
          <text text-case="title" variable="genre"/>
        </else-if>
      </choose>
      <text macro="label-number"/>
    </group>
  </macro>
  <macro name="identifier-number-part">
    <choose>
      <if variable="part-title"/>
      <else-if is-numeric="part-number">
        <text macro="label-part-number"/>
      </else-if>
    </choose>
  </macro>
  <macro name="identifier-number-volume">
    <choose>
      <if variable="volume volume-title"/>
      <else-if variable="part-title volume"/>
      <else-if is-numeric="volume">
        <text macro="label-volume"/>
      </else-if>
      <else>
        <text macro="label-number-of-volumes"/>
      </else>
    </choose>
  </macro>
  <macro name="identifier-patent">
    <group delimiter=" ">
      <text form="short" variable="authority"/>
      <choose>
        <if variable="genre">
          <text text-case="capitalize-first" variable="genre"/>
        </if>
        <else>
          <text term="patent" text-case="capitalize-first"/>
        </else>
      </choose>
      <text macro="label-number"/>
    </group>
  </macro>
  <macro name="identifier-serial">
    <choose>
      <if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
        <text macro="identifier-number-part"/>
      </if>
      <else-if match="any" variable="collection-editor compiler editor editorial-director"/>
      <else-if match="any" type="interview paper-conference">
        <text macro="identifier-number-part"/>
      </else-if>
    </choose>
  </macro>
  <macro name="identifier-series">
    <choose>
      <if match="any" type="document report standard">
        <group delimiter=" ">
          <text text-case="title" variable="collection-title"/>
          <text variable="collection-number"/>
        </group>
      </if>
    </choose>
  </macro>
  <macro name="description">
    <group prefix="[" suffix="]">
      <choose>
        <if match="any" type="interview" variable="interviewer">
          <text macro="description-interview"/>
        </if>
        <else-if match="any" type="review review-book" variable="reviewed-author reviewed-genre reviewed-title">
          <text macro="description-review"/>
        </else-if>
        <else-if type="personal_communication">
          <text macro="description-letter"/>
        </else-if>
        <else-if type="song" variable="composer">
          <text macro="description-song"/>
        </else-if>
        <else-if type="thesis">
          <text macro="description-thesis"/>
        </else-if>
        <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
          <text macro="description-serial"/>
        </else-if>
        <else-if match="none" variable="container-title">
          <text macro="description-format"/>
        </else-if>
        <else-if match="any" type="document report software standard"/>
        <else-if match="any" type="event paper-conference performance speech">
          <choose>
            <if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume">
              <text macro="description-format"/>
            </if>
          </choose>
        </else-if>
        <else>
          <text macro="description-format"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="description-format">
    <choose>
      <if match="any" variable="genre medium">
        <group delimiter="; ">
          <choose>
            <if match="none" variable="number">
              <text text-case="capitalize-first" variable="genre"/>
            </if>
          </choose>
          <text text-case="capitalize-first" variable="medium"/>
        </group>
      </if>
      <else>
        <text macro="description-format-term-generic"/>
      </else>
    </choose>
  </macro>
  <macro name="description-format-term-generic">
    <choose>
      <if type="broadcast">
        <text term="broadcast" text-case="capitalize-first"/>
      </if>
      <else-if type="collection">
        <text term="collection" text-case="capitalize-first"/>
      </else-if>
      <else-if type="dataset">
        <text term="dataset" text-case="capitalize-first"/>
      </else-if>
      <else-if type="figure">
        <text term="figure" text-case="capitalize-first"/>
      </else-if>
      <else-if type="graphic">
        <text term="graphic" text-case="capitalize-first"/>
      </else-if>
      <else-if match="any" type="interview personal_communication">
        <choose>
          <if match="none" variable="archive archive-place container-title DOI number publisher references URL">
            <text term="personal-communication" text-case="capitalize-first"/>
          </if>
          <else-if type="interview">
            <text term="interview" text-case="capitalize-first"/>
          </else-if>
          <else-if type="personal_communication">
            <text term="letter" text-case="capitalize-first"/>
          </else-if>
        </choose>
      </else-if>
      <else-if type="manuscript">
        <choose>
          <if match="none" variable="archive archive-place container-title DOI number publisher references URL">
            <text term="manuscript" text-case="capitalize-first"/>
          </if>
        </choose>
      </else-if>
      <else-if type="map">
        <text term="map" text-case="capitalize-first"/>
      </else-if>
      <else-if type="motion_picture">
        <text term="motion_picture" text-case="capitalize-first"/>
      </else-if>
      <else-if type="periodical" variable="container-title supplement-number">
        <text term="supplement" text-case="capitalize-first"/>
      </else-if>
      <else-if type="periodical" variable="container-title title">
        <text term="special-issue" text-case="capitalize-first"/>
      </else-if>
      <else-if type="song">
        <text term="song" text-case="capitalize-first"/>
      </else-if>
      <else-if type="software">
        <text term="software" text-case="capitalize-first"/>
      </else-if>
      <else-if type="post">
        <text term="post" text-case="capitalize-first"/>
      </else-if>
      <else-if type="review">
        <text term="review" text-case="capitalize-first"/>
      </else-if>
      <else-if type="review-book">
        <text term="review-book" text-case="capitalize-first"/>
      </else-if>
    </choose>
  </macro>
  <macro name="description-interview">
    <group delimiter="; ">
      <choose>
        <if variable="interviewer title">
          <choose>
            <if match="none" variable="number">
              <text text-case="capitalize-first" variable="genre"/>
            </if>
          </choose>
          <text text-case="capitalize-first" variable="medium"/>
        </if>
        <else-if variable="title">
          <text macro="description-format"/>
        </else-if>
        <else-if variable="genre">
          <group delimiter=" ">
            <text text-case="capitalize-first" variable="genre"/>
            <choose>
              <if variable="interviewer">
                <text form="verb" term="container-author"/>
                <names variable="interviewer">
                  <name and="text"/>
                </names>
              </if>
            </choose>
          </group>
        </else-if>
        <else-if variable="interviewer">
          <names variable="interviewer">
            <label form="verb" suffix=" " text-case="capitalize-first"/>
            <name and="text"/>
          </names>
          <text text-case="capitalize-first" variable="medium"/>
        </else-if>
        <else>
          <text macro="description-format"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="description-letter">
    <choose>
      <if variable="recipient">
        <group delimiter="; ">
          <group delimiter=" ">
            <text macro="description-format"/>
            <names variable="recipient">
              <label form="verb" suffix=" "/>
              <name and="text" initialize="false"/>
            </names>
          </group>
          <text macro="description-medium"/>
        </group>
      </if>
      <else>
        <text macro="description-format"/>
      </else>
    </choose>
  </macro>
  <macro name="description-medium">
    <choose>
      <if variable="number"/>
      <else-if variable="genre">
        <text text-case="capitalize-first" variable="medium"/>
      </else-if>
    </choose>
  </macro>
  <macro name="description-review">
    <group delimiter="; ">
      <group delimiter=", ">
        <group delimiter=" ">
          <choose>
            <if variable="reviewed-genre">
              <text term="review-of" text-case="capitalize-first"/>
              <text variable="reviewed-genre"/>
            </if>
            <else-if variable="number">
              <text form="short" term="review-of" text-case="capitalize-first"/>
            </else-if>
            <else-if variable="genre">
              <text text-case="capitalize-first" variable="genre"/>
            </else-if>
            <else-if variable="medium">
              <text text-case="capitalize-first" variable="medium"/>
            </else-if>
            <else-if type="review-book">
              <text term="review-of" text-case="capitalize-first"/>
              <text term="book" text-case="lowercase"/>
            </else-if>
            <else>
              <text form="short" term="review-of" text-case="capitalize-first"/>
            </else>
          </choose>
          <text macro="description-review-title"/>
        </group>
        <names variable="reviewed-author">
          <label form="verb-short" suffix=" "/>
          <name and="text"/>
        </names>
      </group>
      <text macro="description-medium"/>
    </group>
  </macro>
  <macro name="description-review-title">
    <choose>
      <if match="any" variable="reviewed-genre reviewed-title">
        <text font-style="italic" variable="reviewed-title"/>
      </if>
      <else>
        <text font-style="italic" variable="title"/>
      </else>
    </choose>
  </macro>
  <macro name="description-serial">
    <group delimiter="; ">
      <text macro="description-format"/>
      <choose>
        <if match="none" variable="title">
          <text variable="section"/>
        </if>
      </choose>
    </group>
  </macro>
  <macro name="description-song">
    <group delimiter="; ">
      <group delimiter=" ">
        <choose>
          <if match="any" variable="genre medium">
            <choose>
              <if match="none" variable="number">
                <text text-case="capitalize-first" variable="genre"/>
              </if>
            </choose>
            <text text-case="capitalize-first" variable="medium"/>
            <text form="verb" term="performer"/>
          </if>
          <else>
            <text form="verb" term="performer" text-case="capitalize-first"/>
          </else>
        </choose>
        <names variable="author">
          <name and="text"/>
          <substitute>
            <names variable="performer"/>
          </substitute>
        </names>
      </group>
      <text macro="description-medium"/>
    </group>
  </macro>
  <macro name="description-thesis">
    <group delimiter="; ">
      <group delimiter=", ">
        <text text-case="capitalize-first" variable="genre"/>
        <choose>
          <if match="any" variable="archive DOI URL">
            <text variable="publisher"/>
          </if>
        </choose>
      </group>
      <text text-case="capitalize-first" variable="medium"/>
    </group>
  </macro>
  <macro name="source">
    <group delimiter=". ">
      <choose>
        <if match="any" type="post webpage"/>
        <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book">
          <text macro="source-serial"/>
        </else-if>
        <else-if match="any" variable="collection-editor compiler editor editorial-director">
          <text macro="source-monographic"/>
        </else-if>
        <else-if match="any" type="interview paper-conference">
          <text macro="source-serial"/>
        </else-if>
        <else>
          <text macro="source-monographic"/>
        </else>
      </choose>
      <text macro="source-publisher"/>
      <text macro="source-archive"/>
      <text macro="source-location"/>
      <text macro="source-website"/>
    </group>
  </macro>
  <macro name="source-serial">
    <group delimiter=". ">
      <group delimiter=", ">
        <group delimiter=", " font-style="italic">
          <text text-case="title" variable="container-title"/>
          <text text-case="title" variable="collection-title"/>
        </group>
        <group>
          <label variable="volume" form="short" text-case="capitalize-first" suffix=" "/>
          <text variable="volume"/>
          <group prefix="(" suffix=")" delimiter=", ">
            <text variable="issue"/>
            <text macro="label-supplement-number"/>
          </group>
        </group>
        <choose>
          <if variable="number">
            <text macro="label-number-article"/>
          </if>
          <else>
            <text variable="page"/>
          </else>
        </choose>
      </group>
      <choose>
        <if match="any" variable="collection-title issue number page supplement-number volume"/>
        <else-if variable="issued status">
          <text text-case="capitalize-first" variable="status"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="source-monographic">
    <choose>
      <if variable="container-title">
        <group delimiter=" ">
          <choose>
            <if type="song">
              <text term="on" text-case="capitalize-first"/>
            </if>
            <else>
              <text term="in" text-case="capitalize-first"/>
            </else>
          </choose>
          <group delimiter=", ">
            <text macro="source-monographic-author"/>
            <text macro="source-monographic-title"/>
          </group>
          <text macro="source-monographic-identifier"/>
          <text macro="source-monographic-description"/>
        </group>
      </if>
    </choose>
  </macro>
  <macro name="source-monographic-author">
    <names variable="container-author">
      <name and="text"/>
      <label prefix=" (" suffix=")" text-case="title"/>
      <substitute>
        <names variable="executive-producer"/>
        <names variable="series-creator"/>
        <names variable="editor-translator">
          <name and="text"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names delimiter="; " variable="editor">
          <name and="text"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="editorial-director">
          <name and="text"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
        <names variable="compiler"/>
        <choose>
          <if match="any" type="event performance speech">
            <names variable="chair"/>
            <names variable="organizer"/>
          </if>
        </choose>
        <names variable="curator"/>
        <names variable="collection-editor">
          <name and="text"/>
          <label form="short" prefix=" (" suffix=")" text-case="title"/>
        </names>
      </substitute>
    </names>
  </macro>
  <macro name="source-monographic-title">
    <group delimiter=": " font-style="italic">
      <text variable="container-title"/>
      <text macro="title-volume"/>
    </group>
  </macro>
  <macro name="source-monographic-identifier">
    <choose>
      <if variable="container-title">
        <group delimiter="; " prefix="(" suffix=")">
          <choose>
            <if match="none" type="broadcast graphic map motion_picture">
              <text macro="identifier-number"/>
            </if>
          </choose>
          <text macro="identifier-monographic"/>
        </group>
      </if>
    </choose>
  </macro>
  <macro name="source-monographic-description">
    <group prefix="[" suffix="]">
      <choose>
        <if match="any" type="document report software standard">
          <text macro="description-format"/>
        </if>
        <else-if match="any" variable="collection-editor compiler editor editorial-director issue page supplement-number volume"/>
        <else-if match="any" type="event paper-conference performance speech">
          <text macro="description-format"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="source-publisher">
    <choose>
      <if type="thesis">
        <choose>
          <if match="none" variable="archive DOI URL">
            <text variable="publisher"/>
          </if>
        </choose>
      </if>
      <else-if match="any" type="article-journal article-magazine article-newspaper periodical post-weblog review review-book"/>
      <else-if match="any" variable="collection-editor compiler editor editorial-director">
        <text variable="publisher"/>
      </else-if>
      <else-if type="interview">
        <text variable="publisher"/>
      </else-if>
      <else-if type="paper-conference"/>
      <else>
        <text variable="publisher"/>
      </else>
    </choose>
  </macro>
  <macro name="source-archive">
    <group delimiter=", ">
      <choose>
        <if variable="archive_collection">
          <group delimiter=" ">
            <text variable="archive_collection"/>
            <text prefix="(" suffix=")" variable="archive_location"/>
          </group>
          <text variable="archive"/>
          <text variable="archive-place"/>
        </if>
        <else>
          <group delimiter=" ">
            <text variable="archive"/>
            <text prefix="(" suffix=")" variable="archive_location"/>
          </group>
          <text variable="archive-place"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="source-location">
    <choose>
      <if match="any" variable="event event-title">
        <choose>
          <if type="paper-conference">
            <choose>
              <if match="none" variable="collection-editor compiler editor editorial-director issue page supplement-number volume">
                <text macro="source-location-title-place-date"/>
              </if>
            </choose>
          </if>
          <else>
            <text macro="source-location-title-place-date"/>
          </else>
        </choose>
      </if>
    </choose>
  </macro>
  <macro name="source-location-title-place-date">
    <group delimiter=", ">
      <choose>
        <if variable="event-title">
          <text text-case="capitalize-first" variable="event-title"/>
        </if>
        <else>
          <text text-case="capitalize-first" variable="event"/>
        </else>
      </choose>
      <text variable="event-place"/>
      <text macro="date-event-full"/>
    </group>
  </macro>
  <macro name="source-website">
    <choose>
      <if match="any" type="post webpage">
        <text text-case="title" variable="container-title"/>
      </if>
    </choose>
  </macro>
  <macro name="source-DOI-URL">
    <choose>
      <if variable="DOI">
        <text prefix="https://doi.org/" variable="DOI"/>
      </if>
      <else-if variable="URL">
        <group delimiter=" ">
          <text value="Available:"/>
          <text variable="URL" suffix="."/>
          <group prefix="[" suffix="]">
            <text term="accessed" text-case="capitalize-first" suffix=": "/>
            <date variable="accessed">
              <date-part name="month" form="short" suffix=". "/>
              <date-part name="day" suffix=", "/>
              <date-part name="year"/>
            </date>
          </group>
        </group>
      </else-if>
    </choose>
  </macro>
  <macro name="publication-history">
    <group delimiter="; " prefix="(" suffix=")">
      <choose>
        <if type="patent">
          <text variable="references"/>
        </if>
        <else>
          <choose>
            <if match="none" variable="issued"/>
            <else-if match="any" variable="collection-title issue number page supplement-number volume">
              <text text-case="capitalize-first" variable="status"/>
            </else-if>
          </choose>
          <choose>
            <if variable="references">
              <text variable="references"/>
            </if>
            <else>
              <group delimiter=" ">
                <text term="original-work-published" text-case="capitalize-first"/>
                <group delimiter=", ">
                  <group delimiter=" ">
                    <text value="as"/>
                    <text font-style="italic" variable="original-title"/>
                  </group>
                  <text macro="date-original-year"/>
                  <text variable="original-publisher"/>
                </group>
              </group>
            </else>
          </choose>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="legal-reference">
    <group delimiter=", ">
      <choose>
        <if type="treaty">
          <text macro="legal-title"/>
          <names variable="author">
            <name delimiter="-" et-al-min="100" et-al-use-first="99" form="short" initialize="false"/>
          </names>
          <text macro="legal-date"/>
          <text macro="legal-source"/>
        </if>
        <else>
          <group delimiter=" ">
            <group delimiter=", ">
              <text macro="legal-title"/>
              <text macro="legal-source"/>
            </group>
            <text macro="legal-date"/>
            <text macro="legal-identifier"/>
          </group>
        </else>
      </choose>
      <group delimiter=" ">
        <choose>
          <if locator="page" variable="page">
            <text term="at"/>
          </if>
        </choose>
        <text macro="label-locator"/>
      </group>
    </group>
  </macro>
  <macro name="legal-date">
    <choose>
      <if type="treaty">
        <text macro="date-issued-full"/>
      </if>
      <else-if type="legal_case">
        <text macro="legal-date-case"/>
      </else-if>
      <else-if match="any" type="bill hearing legislation regulation">
        <group delimiter=" " prefix="(" suffix=")">
          <group delimiter=" ">
            <text macro="date-original-year"/>
            <text form="symbol" term="and"/>
          </group>
          <choose>
            <if variable="issued">
              <text macro="date-issued-year"/>
            </if>
            <else>
              <date form="text" variable="submitted"/>
            </else>
          </choose>
        </group>
      </else-if>
    </choose>
  </macro>
  <macro name="legal-date-case">
    <group delimiter=" " prefix="(" suffix=")">
      <text variable="authority"/>
      <choose>
        <if variable="container-title">
          <text macro="date-issued-year"/>
        </if>
        <else>
          <text macro="date-issued-full"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="legal-title">
    <choose>
      <if match="any" type="bill legal_case legislation regulation treaty">
        <text text-case="title" variable="title"/>
      </if>
      <else-if type="hearing">
        <group delimiter=": " font-style="italic">
          <text text-case="capitalize-first" variable="title"/>
          <group delimiter=" ">
            <text term="hearing" text-case="capitalize-first"/>
            <group delimiter=" ">
              <text term="on"/>
              <text variable="number"/>
            </group>
            <group delimiter=" ">
              <text value="before the"/>
              <text variable="section"/>
            </group>
          </group>
        </group>
      </else-if>
    </choose>
  </macro>
  <macro name="legal-identifier">
    <group delimiter=" " prefix="(" suffix=")">
      <choose>
        <if type="hearing">
          <text form="verb" term="hearing"/>
          <names variable="author">
            <name and="text" initialize="false"/>
          </names>
        </if>
        <else-if match="any" type="bill legislation regulation">
          <text variable="status"/>
        </else-if>
      </choose>
    </group>
  </macro>
  <macro name="legal-identifier-bill-report">
    <group delimiter=" ">
      <text variable="genre"/>
      <choose>
        <if match="any" variable="authority chapter-number container-title">
          <text variable="number"/>
        </if>
        <else>
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="legal-source">
    <choose>
      <if type="bill">
        <text macro="legal-source-bill"/>
      </if>
      <else-if type="hearing">
        <text macro="legal-source-hearing"/>
      </else-if>
      <else-if type="legal_case">
        <text macro="legal-source-case"/>
      </else-if>
      <else-if type="legislation">
        <text macro="legal-source-legislation"/>
      </else-if>
      <else-if type="regulation">
        <text macro="legal-source-regulation"/>
      </else-if>
      <else-if type="treaty">
        <text macro="legal-source-treaty"/>
      </else-if>
    </choose>
  </macro>
  <macro name="legal-source-bill">
    <group delimiter=", ">
      <text macro="legal-identifier-bill-report"/>
      <group delimiter=" ">
        <text variable="authority"/>
        <text variable="chapter-number"/>
      </group>
      <group delimiter=" ">
        <text variable="volume"/>
        <text variable="container-title"/>
        <text variable="page-first"/>
      </group>
    </group>
  </macro>
  <macro name="legal-source-case">
    <group delimiter=" ">
      <choose>
        <if variable="container-title">
          <text variable="volume"/>
          <text variable="container-title"/>
          <text macro="label-section-symbol"/>
          <choose>
            <if match="any" variable="page page-first">
              <text variable="page-first"/>
            </if>
            <else>
              <text value="___"/>
            </else>
          </choose>
        </if>
        <else>
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>
  <macro name="legal-source-hearing">
    <group delimiter=" ">
      <text variable="authority"/>
      <text variable="chapter-number"/>
    </group>
  </macro>
  <macro name="legal-source-legislation">
    <choose>
      <if variable="number">
        <group delimiter=", ">
          <group delimiter=" ">
            <choose>
              <if variable="genre">
                <text text-case="capitalize-first" variable="genre"/>
              </if>
              <else>
                <text form="short" term="legislation" text-case="capitalize-first"/>
              </else>
            </choose>
            <text macro="label-number-capitalized"/>
          </group>
          <group delimiter=" ">
            <text variable="volume"/>
            <text variable="container-title"/>
            <text variable="page-first"/>
          </group>
        </group>
      </if>
      <else>
        <group delimiter=" ">
          <text variable="volume"/>
          <text variable="container-title"/>
          <choose>
            <if variable="section">
              <text macro="label-section-symbol"/>
            </if>
            <else>
              <text variable="page-first"/>
            </else>
          </choose>
        </group>
      </else>
    </choose>
  </macro>
  <macro name="legal-source-regulation">
    <group delimiter=", ">
      <group delimiter=" ">
        <text variable="genre"/>
        <text macro="label-number-capitalized"/>
      </group>
      <group delimiter=" ">
        <text variable="volume"/>
        <text variable="container-title"/>
        <choose>
          <if variable="section">
            <text macro="label-section-symbol"/>
          </if>
          <else>
            <text variable="page-first"/>
          </else>
        </choose>
      </group>
    </group>
  </macro>
  <macro name="legal-source-treaty">
    <group delimiter=" ">
      <number variable="volume"/>
      <text variable="container-title"/>
      <choose>
        <if match="any" variable="page page-first">
          <text variable="page-first"/>
        </if>
        <else>
          <text macro="label-number-capitalized"/>
        </else>
      </choose>
    </group>
  </macro>

  <citation collapse="citation-number">
    <sort>
      <key variable="citation-number"/>
    </sort>
    <layout delimiter="][" prefix="[" suffix="]">
      <group>
        <text variable="citation-number"/>
        <text macro="label-locator" prefix="(" suffix=")"/>
      </group>
    </layout>
  </citation>

  <macro name="bibliography">
    <group delimiter=" ">
      <choose>
        <if match="any" type="bill hearing legal_case legislation regulation treaty">
          <text macro="legal-reference" suffix="."/>
          <text macro="source-DOI-URL"/>
          <text variable="references"/>
        </if>
        <else>
          <group delimiter=". " suffix=".">
            <text macro="author-and-contributors"/>
            <text macro="date"/>
            <text macro="title-and-descriptions"/>
            <text macro="source"/>
          </group>
          <text macro="source-DOI-URL"/>
          <text macro="publication-history"/>
        </else>
      </choose>
    </group>
  </macro>

  <bibliography entry-spacing="0" et-al-min="21" et-al-use-first="19" et-al-use-last="true" line-spacing="2" second-field-align="flush">
    <layout>
      <text prefix="[" suffix="]" variable="citation-number"/>
      <text macro="bibliography"/>
    </layout>
  </bibliography>
</style>
