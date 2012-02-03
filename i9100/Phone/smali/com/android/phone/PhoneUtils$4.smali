.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 34
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1904
    const-string v5, "query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1905
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    .line 1909
    .local v19, conn:Lcom/android/internal/telephony/Connection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1936
    :cond_0
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move v5, v0

    if-nez v5, :cond_1

    .line 1937
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1947
    :cond_1
    :goto_0
    const/16 v29, 0x0

    .line 1948
    .local v29, strBirthday:Ljava/lang/String;
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 1949
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 1950
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 1951
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1952
    .local v3, cr:Landroid/content/ContentResolver;
    const/16 v25, 0x0

    .line 1954
    .local v25, snsCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND sns_id IS NOT NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1961
    :goto_1
    if-eqz v25, :cond_4

    .line 1962
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1963
    const-string v5, "sp"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1964
    .local v28, sp:I
    const-string v5, "sns_id"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1965
    .local v27, sns_id:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns info: Service Provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Friend ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1967
    const-string v5, "content://com.sec.android.app.provider.sns"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1968
    .local v14, SNS_BASE:Landroid/net/Uri;
    const-string v5, "friend"

    invoke-static {v14, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1969
    .local v4, uri:Landroid/net/Uri;
    const-string v24, "friend.friend_id = ?"

    .line 1970
    .local v24, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v27, v7, v5

    .line 1971
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v26, 0x0

    .line 1974
    .local v26, snsStatusCursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "status_status"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, "birthday"

    aput-object v8, v5, v6

    const-string v6, "friend.friend_id = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 1981
    :goto_2
    if-eqz v26, :cond_3

    .line 1982
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1983
    move/from16 v0, v28

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 1984
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 1986
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns Info: snsAccountType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", snsStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns Info: birthday "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1990
    :cond_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1993
    .end local v4           #uri:Landroid/net/Uri;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #SNS_BASE:Landroid/net/Uri;
    .end local v24           #selection:Ljava/lang/String;
    .end local v26           #snsStatusCursor:Landroid/database/Cursor;
    .end local v27           #sns_id:Ljava/lang/String;
    .end local v28           #sp:I
    :cond_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1997
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v25           #snsCursor:Landroid/database/Cursor;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 1998
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2000
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 2001
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v33

    .line 2002
    .local v33, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "limit"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2003
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 2004
    .local v9, birthUri:Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 2005
    .local v23, sb:Ljava/lang/StringBuilder;
    const-string v5, "contact_id= \'"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    const-string v5, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    const-string v5, "data2= 3"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2010
    .restart local v3       #cr:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 2012
    .local v20, cur:Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_2
    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v10, v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 2016
    :goto_3
    if-eqz v20, :cond_6

    .line 2018
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2019
    const-string v5, "data1"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2021
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2025
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v9           #birthUri:Landroid/net/Uri;
    .end local v20           #cur:Landroid/database/Cursor;
    .end local v23           #sb:Ljava/lang/StringBuilder;
    .end local v33           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_6
    if-eqz v29, :cond_a

    .line 2026
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd"

    invoke-direct {v15, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2027
    .local v15, birthFormat:Ljava/text/SimpleDateFormat;
    const/16 v16, 0x0

    .local v16, birthday:Ljava/util/Date;
    const/16 v30, 0x0

    .line 2030
    .local v30, today:Ljava/util/Date;
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 2034
    const-string v5, "2011-"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v30

    .line 2042
    :goto_4
    if-eqz v16, :cond_a

    if-eqz v30, :cond_a

    .line 2043
    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getYear()I

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 2044
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-lez v5, :cond_7

    .line 2046
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 2049
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 2050
    .local v17, birthdayTime:J
    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v31

    .line 2052
    .local v31, todayTime:J
    sub-long v5, v17, v31

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2053
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x7

    cmp-long v5, v5, v7

    if-lez v5, :cond_9

    .line 2054
    :cond_8
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2056
    :cond_9
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 2057
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 2062
    .end local v15           #birthFormat:Ljava/text/SimpleDateFormat;
    .end local v16           #birthday:Ljava/util/Date;
    .end local v17           #birthdayTime:J
    .end local v30           #today:Ljava/util/Date;
    .end local v31           #todayTime:J
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2063
    return-void

    .line 1940
    .end local v29           #strBirthday:Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v22

    .line 1941
    .local v22, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v22, :cond_1

    .line 1942
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1943
    move-object/from16 p3, v22

    goto/16 :goto_0

    .line 1958
    .end local v22           #newCi:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v25       #snsCursor:Landroid/database/Cursor;
    .restart local v29       #strBirthday:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    .line 1959
    .local v21, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact id Query exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1977
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v14       #SNS_BASE:Landroid/net/Uri;
    .restart local v24       #selection:Ljava/lang/String;
    .restart local v26       #snsStatusCursor:Landroid/database/Cursor;
    .restart local v27       #sns_id:Ljava/lang/String;
    .restart local v28       #sp:I
    :catch_1
    move-exception v5

    move-object/from16 v21, v5

    .line 1978
    .restart local v21       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sns Query exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2013
    .end local v4           #uri:Landroid/net/Uri;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #SNS_BASE:Landroid/net/Uri;
    .end local v21           #e:Ljava/lang/Exception;
    .end local v24           #selection:Ljava/lang/String;
    .end local v25           #snsCursor:Landroid/database/Cursor;
    .end local v26           #snsStatusCursor:Landroid/database/Cursor;
    .end local v27           #sns_id:Ljava/lang/String;
    .end local v28           #sp:I
    .restart local v9       #birthUri:Landroid/net/Uri;
    .restart local v20       #cur:Landroid/database/Cursor;
    .restart local v23       #sb:Ljava/lang/StringBuilder;
    .restart local v33       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_2
    move-exception v5

    move-object/from16 v21, v5

    .line 2014
    .restart local v21       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "birthday Query exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2038
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v9           #birthUri:Landroid/net/Uri;
    .end local v20           #cur:Landroid/database/Cursor;
    .end local v21           #e:Ljava/lang/Exception;
    .end local v23           #sb:Ljava/lang/StringBuilder;
    .end local v33           #uriBuilder:Landroid/net/Uri$Builder;
    .restart local v15       #birthFormat:Ljava/text/SimpleDateFormat;
    .restart local v16       #birthday:Ljava/util/Date;
    .restart local v30       #today:Ljava/util/Date;
    :catch_3
    move-exception v5

    move-object/from16 v21, v5

    .line 2039
    .local v21, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-string v5, "birthday - DateParseException"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
