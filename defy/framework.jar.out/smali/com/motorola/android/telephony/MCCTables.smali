.class public final Lcom/motorola/android/telephony/MCCTables;
.super Ljava/lang/Object;
.source "MCCTables.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MCCTables"

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sid"

    sget v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mcc"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "country_code"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "country_name"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ndd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idd"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "area_code"

    iget-object v2, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdn_length"

    iget v2, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dst_flag"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "nanps"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "nbpcd"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "time_zone"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public checkUnknownMcc(III)I
    .locals 30
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTflag"

    .prologue
    const/16 v28, 0x0

    .local v28, tmpMcc:I
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v4, v2

    .local v4, projection1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v2, v0

    sget-object v3, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .local v20, c1:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .local v29, tmpMcc:I
    :goto_0
    return v29

    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v7, v2

    .local v7, projection2:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/motorola/android/provider/Dlut$Unresolve;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, c2:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v21

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto :goto_0

    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v10, v2

    .local v10, projection3:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v8, v0

    sget-object v9, Lcom/motorola/android/provider/Dlut$Conflicts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid_conflict="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .local v22, c3:Landroid/database/Cursor;
    if-eqz v22, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v22

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .local v25, count:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v22

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .local v26, foundMcc:I
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v13, v2

    .local v13, projection4:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v11, v0

    sget-object v12, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ((("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_offset_low"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_offset_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")) or (("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_dst_low"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gmt_dst_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .local v23, c4:Landroid/database/Cursor;
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .end local v13           #projection4:[Ljava/lang/String;
    .end local v23           #c4:Landroid/database/Cursor;
    .end local v25           #count:I
    .end local v26           #foundMcc:I
    .end local v27           #i:I
    :cond_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v2, 0x1

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v16, v2

    .local v16, projection5:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v14, v0

    sget-object v15, Lcom/motorola/android/provider/Dlut$Range;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sid_range_low<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sid_range_high"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .local v24, c5:Landroid/database/Cursor;
    if-eqz v24, :cond_a

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0

    .end local v29           #tmpMcc:I
    .restart local v28       #tmpMcc:I
    :cond_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_a
    move/from16 v29, v28

    .end local v28           #tmpMcc:I
    .restart local v29       #tmpMcc:I
    goto/16 :goto_0
.end method

.method public getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 21

    .prologue
    const-string v19, ""

    .local v19, lastCountryName:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, j:I
    const/16 v20, 0x0

    .local v20, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mcc"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "country_code"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "country_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "ndd"

    aput-object v3, v4, v2

    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v2, v0

    sget-object v3, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "country_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, c:Landroid/database/Cursor;
    if-nez v13, :cond_0

    const/4 v2, 0x0

    move-object/from16 v5, v20

    .end local v20           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v5, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    return-object v2

    .end local v5           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v20       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .local v14, count:I
    add-int/lit8 v2, v14, 0x1

    new-array v15, v2, [Lcom/motorola/android/telephony/MCCEntry;

    .local v15, countryList:[Lcom/motorola/android/telephony/MCCEntry;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v5, v20

    .end local v20           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v5       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_1
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_2

    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, curCountryName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .local v6, MCC:I
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, countryCode:I
    move-object/from16 v8, v16

    .local v8, countryName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, NDD:Ljava/lang/String;
    new-instance v5, Lcom/motorola/android/telephony/MCCEntry;

    .end local v5           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const-string v10, "011"

    const-string v11, "847"

    const/16 v12, 0xa

    invoke-direct/range {v5 .. v12}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v5       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    aput-object v5, v15, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v16

    .end local v6           #MCC:I
    .end local v7           #countryCode:I
    .end local v8           #countryName:Ljava/lang/String;
    .end local v9           #NDD:Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .end local v16           #curCountryName:Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    aput-object v2, v15, v14

    move-object v2, v15

    goto :goto_0
.end method

.method public getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 27
    .parameter "mcc"

    .prologue
    const-string v10, ""

    .local v10, NDD:Ljava/lang/String;
    const-string v11, ""

    .local v11, IDD:Ljava/lang/String;
    const-string v12, ""

    .local v12, areaCode:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, MDNLength:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v25

    .local v25, mMdn:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/16 v23, 0x0

    .local v23, c:Landroid/database/Cursor;
    if-nez v25, :cond_0

    const-string v25, ""

    :cond_0
    const/4 v3, -0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_2

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mcc"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "country_code"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "ndd"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "country_name"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "idd"

    aput-object v4, v5, v3

    .local v5, projection1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, MCC:I
    const/4 v3, 0x1

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, countryCode:I
    const/4 v3, 0x2

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x3

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, countryName:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v6, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v6 .. v13}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v5           #projection1:[Ljava/lang/String;
    .end local v7           #MCC:I
    .end local v8           #countryCode:I
    .end local v9           #countryName:Ljava/lang/String;
    .end local v26           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v6, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    .end local v6           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v26       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_2
    const/4 v3, 0x4

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const-string v4, "mcc"

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const-string v4, "country_code"

    aput-object v4, v16, v3

    const/4 v3, 0x2

    const-string v4, "ndd"

    aput-object v4, v16, v3

    const/4 v3, 0x3

    const-string v4, "country_name"

    aput-object v4, v16, v3

    .local v16, projection2:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object v14, v0

    sget-object v15, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .restart local v7       #MCC:I
    const/4 v3, 0x1

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .restart local v8       #countryCode:I
    const/4 v3, 0x2

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x3

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #countryName:Ljava/lang/String;
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move v13, v3

    :goto_1
    const-string v3, "United States of America"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    if-lt v13, v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_3
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "idd"

    aput-object v4, v19, v3

    .local v19, projection3:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    sget-object v18, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .local v24, cur:Landroid/database/Cursor;
    if-eqz v24, :cond_5

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v6, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v6 .. v13}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v26           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v6       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_0

    .end local v6           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v19           #projection3:[Ljava/lang/String;
    .end local v24           #cur:Landroid/database/Cursor;
    .restart local v26       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_6
    const/4 v3, 0x0

    move v13, v3

    goto :goto_1

    .end local v7           #MCC:I
    .end local v8           #countryCode:I
    .end local v9           #countryName:Ljava/lang/String;
    .end local v16           #projection2:[Ljava/lang/String;
    :cond_7
    move-object/from16 v6, v26

    .end local v26           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v6       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto/16 :goto_0
.end method

.method public getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .local v14, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v13, 0x0

    .local v13, mcc:I
    const/4 v12, 0x0

    .local v12, countryCode:I
    const/4 v10, 0x0

    .local v10, mdnLength:I
    const/4 v7, 0x0

    .local v7, ndd:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, idd:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, countryName:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, areaCode:Ljava/lang/String;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "mcc"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "country_code"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "ndd"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "country_name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "idd"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "area_code"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mdn_length"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .end local v13           #mcc:I
    .local v4, mcc:I
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .end local v12           #countryCode:I
    .local v5, countryCode:I
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v3, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v3 .. v10}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .local v3, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v3

    .end local v3           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v4           #mcc:I
    .end local v5           #countryCode:I
    .restart local v12       #countryCode:I
    .restart local v13       #mcc:I
    .restart local v14       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_0
    move v5, v12

    .end local v12           #countryCode:I
    .restart local v5       #countryCode:I
    move v4, v13

    .end local v13           #mcc:I
    .restart local v4       #mcc:I
    move-object v3, v14

    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_0

    .end local v3           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .end local v4           #mcc:I
    .end local v5           #countryCode:I
    .restart local v12       #countryCode:I
    .restart local v13       #mcc:I
    .restart local v14       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    :cond_1
    move v5, v12

    .end local v12           #countryCode:I
    .restart local v5       #countryCode:I
    move v4, v13

    .end local v13           #mcc:I
    .restart local v4       #mcc:I
    move-object v3, v14

    .end local v14           #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    .restart local v3       #mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    goto :goto_1
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "countryName"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country_name= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public isLastNBPCDAttmptExpired(I)Z
    .locals 13
    .parameter "mcc"

    .prologue
    const/4 v12, 0x0

    .local v12, result:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "nbpcd_last_attempt"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, lastAttmptDateLong:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .local v9, lastAttmptDate:Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .local v8, curDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #curDate:Ljava/util/Date;
    .end local v9           #lastAttmptDate:Ljava/util/Date;
    .end local v10           #lastAttmptDateLong:J
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v12

    .restart local v10       #lastAttmptDateLong:J
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    const/4 v12, 0x1

    goto :goto_0
.end method

.method public isMCCSupportNBPCD(I)Z
    .locals 11
    .parameter "mcc"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .local v8, result:I
    const/4 v7, 0x0

    .local v7, nbpcdStatus:Z
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "nbpcd"

    aput-object v0, v2, v9

    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public isUnknownCountryExist()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public isValidCountryCode(Ljava/lang/String;)Z
    .locals 10
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .local v8, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v9, v8

    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, countryCode:I
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "country_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .restart local v9       #result:I
    goto :goto_0
.end method

.method public isValidIDD(Ljava/lang/String;)Z
    .locals 8
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .local v7, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idd= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 9
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, areaCode:I
    const/4 v8, 0x0

    .local v8, result:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Nanp;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "area_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8
.end method

.method public removeUnknownCountry()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Useradd;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateNBPCDSupportInfo(IZZ)V
    .locals 6
    .parameter "mcc"
    .parameter "oldStatus"
    .parameter "curStatus"

    .prologue
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "nbpcd"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .local v0, curDate:Ljava/util/Date;
    const-string v2, "nbpcd_last_attempt"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .end local v0           #curDate:Ljava/util/Date;
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/telephony/MCCTables;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
