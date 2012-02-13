.class public Landroid/pim/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern; = null

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern; = null

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "CalendarProvider"


# instance fields
.field public exdates:[J

.field public exrules:[Landroid/pim/EventRecurrence;

.field public rdates:[J

.field public rrules:[Landroid/pim/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/pim/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/pim/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, rruleStr:Ljava/lang/String;
    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, rdateStr:Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, exruleStr:Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    const-string v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .local v6, rruleColumn:I
    const-string v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, rdateColumn:I
    const-string v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, exruleColumn:I
    const-string v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, exdateColumn:I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, rruleStr:Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, rdateStr:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, exruleStr:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v7, v5, v3, v1}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "component"
    .parameter "propertyName"
    .parameter "ruleStr"

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/pim/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, rrules:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, rrule:Ljava/lang/String;
    new-instance v3, Landroid/pim/ICalendar$Property;

    invoke-direct {v3, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local v3, prop:Landroid/pim/ICalendar$Property;
    invoke-virtual {v3, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "component"
    .parameter "propertyName"
    .parameter "dateStr"

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/pim/ICalendar$Property;

    invoke-direct {v0, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local v0, prop:Landroid/pim/ICalendar$Property;
    const/4 v1, 0x0

    .local v1, tz:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, tzidx:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    :cond_2
    invoke-virtual {v0, p2}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;
    .locals 4
    .parameter "start"
    .parameter "component"

    .prologue
    const-string v0, "DURATION"

    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .local v0, durationProperty:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p0

    .end local v0           #durationProperty:Landroid/pim/ICalendar$Property;
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .restart local v0       #durationProperty:Landroid/pim/ICalendar$Property;
    .restart local p0
    .restart local p1
    :cond_0
    const-string v0, "DTEND"

    .end local v0           #durationProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p1

    .local p1, dtendProperty:Landroid/pim/ICalendar$Property;
    if-nez p1, :cond_1

    const-string p0, "+P0S"

    goto :goto_0

    :cond_1
    const-string v0, "TZID"

    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .local v0, endTzidParameter:Landroid/pim/ICalendar$Parameter;
    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .end local v0           #endTzidParameter:Landroid/pim/ICalendar$Parameter;
    move-object v1, v0

    .local v1, endTzid:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v0, end:Landroid/text/format/Time;
    invoke-virtual {p1}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p1

    .end local p1           #dtendProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .end local v0           #end:Landroid/text/format/Time;
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .end local v1           #endTzid:Ljava/lang/String;
    .local v0, durationMillis:J
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .local v0, durationSeconds:J
    iget-boolean p0, p0, Landroid/text/format/Time;->allDay:Z

    .end local p0
    if-eqz p0, :cond_3

    const-wide/32 p0, 0x15180

    rem-long p0, v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "P"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    .end local v0           #durationSeconds:J
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "D"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .local v0, endTzidParameter:Landroid/pim/ICalendar$Parameter;
    .restart local p0
    .restart local p1       #dtendProperty:Landroid/pim/ICalendar$Property;
    :cond_2
    iget-object v0, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .end local p0
    .end local p1           #dtendProperty:Landroid/pim/ICalendar$Property;
    .local v0, durationSeconds:J
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "P"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "S"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .end local p0
    :goto_0
    return-object v5

    .restart local p0
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/pim/ICalendar$Property;

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local p0
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, first:Z
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/ICalendar$Property;

    .local v3, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v3           #property:Landroid/pim/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "unfoldedIcalContent"

    .prologue
    sget-object v0, Landroid/pim/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "ruleStr"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p0}, Landroid/pim/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, unfoldedRuleStr:Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, split:[Ljava/lang/String;
    array-length v0, v2

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/pim/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const-string v6, "\n"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, rruleStrs:[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    new-instance v3, Landroid/pim/EventRecurrence;

    invoke-direct {v3}, Landroid/pim/EventRecurrence;-><init>()V

    .local v3, rrule:Landroid/pim/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .end local v3           #rrule:Landroid/pim/EventRecurrence;
    .end local v4           #rruleStrs:[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p2}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, exruleStrs:[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    .local v0, exrule:Landroid/pim/EventRecurrence;
    invoke-virtual {v0, p3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #exrule:Landroid/pim/EventRecurrence;
    .end local v1           #exruleStrs:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p4}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    :cond_4
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 10
    .parameter "recurrence"

    .prologue
    const/4 v9, 0x0

    const-string v5, "UTC"

    .local v5, tz:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .local v6, tzidx:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v4, time:Landroid/text/format/Time;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, rawDates:[Ljava/lang/String;
    array-length v2, v3

    .local v2, n:I
    new-array v0, v2, [J

    .local v0, dates:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    aput-wide v7, v0, v1

    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Landroid/pim/ICalendar$Component;)Z
    .locals 11
    .parameter "values"
    .parameter "component"

    .prologue
    const-wide/16 v0, -0x1

    .local v0, dtstart:J
    const-string v2, "dtstart"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "dtstart"

    .end local v0           #dtstart:J
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #dtstart:J
    :cond_0
    const-string v2, "duration"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, duration:Ljava/lang/String;
    const-string v2, "eventTimezone"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, tzid:Ljava/lang/String;
    const-string v2, "rrule"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, rruleStr:Ljava/lang/String;
    const-string v2, "rdate"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, rdateStr:Ljava/lang/String;
    const-string v2, "exrule"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, exruleStr:Ljava/lang/String;
    const-string v2, "exdate"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, exdateStr:Ljava/lang/String;
    const-string v2, "allDay"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .local p0, allDayInteger:Ljava/lang/Integer;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #allDayInteger:Ljava/lang/Integer;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    const/4 p0, 0x1

    .local p0, allDay:Z
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 p0, 0x0

    .end local v0           #dtstart:J
    .end local v9           #tzid:Ljava/lang/String;
    .end local p0           #allDay:Z
    :goto_1
    return p0

    .restart local v0       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .local p0, allDayInteger:Ljava/lang/Integer;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .local p0, allDay:Z
    :cond_4
    new-instance v2, Landroid/pim/ICalendar$Property;

    const-string v3, "DTSTART"

    invoke-direct {v2, v3}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local v2, dtstartProp:Landroid/pim/ICalendar$Property;
    const/4 v3, 0x0

    .local v3, dtstartTime:Landroid/text/format/Time;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    if-nez v3, :cond_7

    if-nez p0, :cond_5

    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v10, "TZID"

    invoke-direct {v3, v10, v9}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    :cond_5
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .end local v9           #tzid:Ljava/lang/String;
    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    if-eqz p0, :cond_6

    new-instance p0, Landroid/pim/ICalendar$Parameter;

    .end local p0           #allDay:Z
    const-string v0, "VALUE"

    .end local v0           #dtstart:J
    const-string v1, "DATE"

    invoke-direct {p0, v0, v1}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    const/4 p0, 0x1

    iput-boolean p0, v3, Landroid/text/format/Time;->allDay:Z

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->hour:I

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->minute:I

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->second:I

    :cond_6
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    new-instance p0, Landroid/pim/ICalendar$Property;

    const-string v0, "DURATION"

    invoke-direct {p0, v0}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local p0, durationProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    const-string p0, "RRULE"

    .end local p0           #durationProp:Landroid/pim/ICalendar$Property;
    invoke-static {p1, p0, v8}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "RDATE"

    invoke-static {p1, p0, v7}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "EXRULE"

    invoke-static {p1, p0, v6}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "EXDATE"

    invoke-static {p1, p0, v5}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_1

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    .restart local v0       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    .local p0, allDay:Z
    :cond_7
    new-instance v3, Landroid/text/format/Time;

    const-string v9, "UTC"

    .end local v9           #tzid:Ljava/lang/String;
    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    goto :goto_2
.end method

.method public static populateComponent(Landroid/database/Cursor;Landroid/pim/ICalendar$Component;)Z
    .locals 12
    .parameter "cursor"
    .parameter "component"

    .prologue
    const-string v0, "dtstart"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, dtstartColumn:I
    const-string v0, "duration"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, durationColumn:I
    const-string v0, "eventTimezone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, tzidColumn:I
    const-string v0, "rrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, rruleColumn:I
    const-string v0, "rdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .local v7, rdateColumn:I
    const-string v0, "exrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .local v6, exruleColumn:I
    const-string v0, "exdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .local v5, exdateColumn:I
    const-string v0, "allDay"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, allDayColumn:I
    const-wide/16 v1, -0x1

    .local v1, dtstart:J
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_0
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, duration:Ljava/lang/String;
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, tzid:Ljava/lang/String;
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, rruleStr:Ljava/lang/String;
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, rdateStr:Ljava/lang/String;
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, exruleStr:Ljava/lang/String;
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, exdateStr:Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local p0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .end local v0           #allDayColumn:I
    const/4 p0, 0x1

    .local p0, allDay:Z
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v0, v1, v10

    if-eqz v0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 p0, 0x0

    .end local v1           #dtstart:J
    .end local v3           #dtstartColumn:I
    .end local v9           #tzid:Ljava/lang/String;
    .end local p0           #allDay:Z
    :goto_1
    return p0

    .restart local v1       #dtstart:J
    .restart local v3       #dtstartColumn:I
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .restart local p0       #allDay:Z
    :cond_3
    new-instance v0, Landroid/pim/ICalendar$Property;

    const-string v3, "DTSTART"

    .end local v3           #dtstartColumn:I
    invoke-direct {v0, v3}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local v0, dtstartProp:Landroid/pim/ICalendar$Property;
    const/4 v3, 0x0

    .local v3, dtstartTime:Landroid/text/format/Time;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    if-nez v3, :cond_6

    if-nez p0, :cond_4

    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v10, "TZID"

    invoke-direct {v3, v10, v9}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    :cond_4
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .end local v9           #tzid:Ljava/lang/String;
    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    if-eqz p0, :cond_5

    new-instance p0, Landroid/pim/ICalendar$Parameter;

    .end local p0           #allDay:Z
    const-string v1, "VALUE"

    .end local v1           #dtstart:J
    const-string v2, "DATE"

    invoke-direct {p0, v1, v2}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    const/4 p0, 0x1

    iput-boolean p0, v3, Landroid/text/format/Time;->allDay:Z

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->hour:I

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->minute:I

    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->second:I

    :cond_5
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    new-instance p0, Landroid/pim/ICalendar$Property;

    const-string v0, "DURATION"

    .end local v0           #dtstartProp:Landroid/pim/ICalendar$Property;
    invoke-direct {p0, v0}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .local p0, durationProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    const-string p0, "RRULE"

    .end local p0           #durationProp:Landroid/pim/ICalendar$Property;
    invoke-static {p1, p0, v8}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "RDATE"

    invoke-static {p1, p0, v7}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "EXRULE"

    invoke-static {p1, p0, v6}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "EXDATE"

    invoke-static {p1, p0, v5}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_1

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    .restart local v0       #dtstartProp:Landroid/pim/ICalendar$Property;
    .restart local v1       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    .local p0, allDay:Z
    :cond_6
    new-instance v3, Landroid/text/format/Time;

    const-string v9, "UTC"

    .end local v9           #tzid:Ljava/lang/String;
    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    goto :goto_2
.end method

.method public static populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "component"
    .parameter "values"

    .prologue
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .local v0, dtstartProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .local v1, dtstart:Ljava/lang/String;
    const-string v2, "TZID"

    invoke-virtual {v0, v2}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, tzid:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    if-nez v0, :cond_3

    const-string v0, "UTC"

    .end local v0           #tzidParam:Landroid/pim/ICalendar$Parameter;
    :goto_1
    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v5, start:Landroid/text/format/Time;
    invoke-virtual {v5, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v2

    .local v2, inUtc:Z
    iget-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .local v0, allDay:Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_8

    :cond_0
    const-string v2, "UTC"

    .end local v3           #tzid:Ljava/lang/String;
    .local v2, tzid:Ljava/lang/String;
    move-object v9, v2

    .end local v2           #tzid:Ljava/lang/String;
    .local v9, tzid:Ljava/lang/String;
    :goto_2
    invoke-static {v5, p0}, Landroid/pim/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;

    move-result-object v2

    .local v2, duration:Ljava/lang/String;
    const-string v3, "RRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, rrule:Ljava/lang/String;
    const-string v3, "RDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v7

    .local v7, rdate:Ljava/lang/String;
    const-string v3, "EXRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, exrule:Ljava/lang/String;
    const-string v3, "EXDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v3

    .local v3, exdate:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #dtstart:Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recurrence missing DTSTART, DTEND/DURATION, or RRULE/RDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .end local v5           #start:Landroid/text/format/Time;
    :goto_3
    return p0

    .end local v2           #duration:Ljava/lang/String;
    .end local v3           #exdate:Ljava/lang/String;
    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    .restart local v1       #dtstart:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_2
    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v3, v2

    goto :goto_0

    .local v3, tzid:Ljava/lang/String;
    :cond_3
    move-object v0, v3

    goto :goto_1

    .end local v1           #dtstart:Ljava/lang/String;
    .local v0, allDay:Z
    .restart local v2       #duration:Ljava/lang/String;
    .local v3, exdate:Ljava/lang/String;
    .restart local v4       #exrule:Ljava/lang/String;
    .restart local v5       #start:Landroid/text/format/Time;
    .restart local v7       #rdate:Ljava/lang/String;
    .restart local v8       #rrule:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "UTC"

    iput-object v1, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .local v5, millis:J
    const-string v1, "dtstart"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v10, -0x1

    cmp-long v1, v5, v10

    if-nez v1, :cond_6

    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTSTART is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_3

    .restart local v0       #allDay:Z
    .restart local p0
    .restart local p1
    :cond_6
    const-string p0, "rrule"

    .end local p0
    invoke-virtual {p1, p0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rdate"

    invoke-virtual {p1, p0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "exrule"

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "exdate"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "eventTimezone"

    invoke-virtual {p1, p0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "duration"

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "allDay"

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .end local v0           #allDay:Z
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x1

    goto :goto_3

    .restart local v0       #allDay:Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v1       #dtstart:Ljava/lang/String;
    .local v2, inUtc:Z
    .local v3, tzid:Ljava/lang/String;
    .local v5, start:Landroid/text/format/Time;
    .restart local p0
    :cond_8
    move-object v9, v3

    .end local v3           #tzid:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "foldedIcalContent"

    .prologue
    sget-object v0, Landroid/pim/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
