.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/ListActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$Loc;
    }
.end annotation


# instance fields
.field mLocales:[Lcom/android/settings/LocalePicker$Loc;

.field mSpecialLocaleCodes:[Ljava/lang/String;

.field mSpecialLocaleNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    return-void
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 294
    :goto_1
    return-object v2

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getContentView()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f03002b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v15, v0

    .line 85
    .local v15, locale:Ljava/util/Locale;
    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, mCountry:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    .line 87
    .local v22, mLanguage:Ljava/lang/String;
    const/16 v16, 0x0

    .line 88
    .local v16, locale_index:I
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Country: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", Language: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f050032

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f050033

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v17

    .line 96
    .local v17, locales:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 98
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .line 99
    .local v24, origSize:I
    move/from16 v0, v24

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v25, v0

    .line 100
    .local v25, preprocess:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v8, 0x0

    .line 101
    .local v8, finalSize:I
    const/4 v10, 0x0

    .local v10, i:I
    move v9, v8

    .end local v8           #finalSize:I
    .local v9, finalSize:I
    :goto_0
    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 102
    aget-object v26, v17, v10

    .line 103
    .local v26, s:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v14

    .line 104
    .local v14, len:I
    const/16 v27, 0x5

    move v0, v14

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 105
    const/16 v27, 0x0

    const/16 v28, 0x2

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, language:Ljava/lang/String;
    const/16 v27, 0x3

    const/16 v28, 0x5

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, country:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v12, l:Ljava/util/Locale;
    if-nez v9, :cond_0

    .line 113
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v27, Lcom/android/settings/LocalePicker$Loc;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v27, v25, v9

    .line 101
    .end local v6           #country:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    goto :goto_0

    .line 120
    .restart local v6       #country:Ljava/lang/String;
    .restart local v12       #l:Ljava/util/Locale;
    .restart local v13       #language:Ljava/lang/String;
    :cond_0
    const/16 v27, 0x1

    sub-int v27, v9, v27

    aget-object v27, v25, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 127
    const/16 v27, 0x1

    sub-int v27, v9, v27

    aget-object v27, v25, v27

    const/16 v28, 0x1

    sub-int v28, v9, v28

    aget-object v28, v25, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/settings/LocalePicker$Loc;->label:Ljava/lang/String;

    .line 132
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v27, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/settings/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v27, v25, v9

    goto :goto_1

    .line 136
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_1
    const-string v27, "zz_ZZ"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 137
    const-string v7, "Pseudo..."

    .line 144
    .local v7, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v27, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, v27

    move-object v1, v7

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v27, v25, v9

    goto :goto_1

    .line 139
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_2
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 150
    .end local v6           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #len:I
    .end local v26           #s:Ljava/lang/String;
    :cond_3
    move v0, v9

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v23, v0

    .line 151
    .local v23, mTempLocales:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_4

    .line 152
    aget-object v27, v25, v10

    aput-object v27, v23, v10

    .line 151
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 154
    :cond_4
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 156
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    .line 157
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "== pre locale : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v23, v10

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 160
    :cond_5
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v21, v0

    .line 161
    .local v21, mFindLocales:[Lcom/android/settings/LocalePicker$Loc;
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 162
    .local v20, mFindIndexs:[I
    const/16 v19, 0x0

    .line 165
    .local v19, mFindCounts:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_6

    .line 166
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "zh_CN"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 168
    aget-object v27, v23, v10

    aput-object v27, v21, v19

    .line 169
    aput v10, v20, v19

    .line 170
    add-int/lit8 v19, v19, 0x1

    .line 175
    :cond_6
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_7

    .line 176
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "en_US"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 178
    aget-object v27, v23, v10

    aput-object v27, v21, v19

    .line 179
    aput v10, v20, v19

    .line 180
    add-int/lit8 v19, v19, 0x1

    .line 185
    :cond_7
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_8

    .line 186
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "en_GB"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 188
    aget-object v27, v23, v10

    aput-object v27, v21, v19

    .line 189
    aput v10, v20, v19

    .line 190
    add-int/lit8 v19, v19, 0x1

    .line 195
    :cond_8
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_9

    .line 196
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "ko_KR"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 198
    aget-object v27, v23, v10

    aput-object v27, v21, v19

    .line 199
    aput v10, v20, v19

    .line 200
    add-int/lit8 v19, v19, 0x1

    .line 205
    :cond_9
    move v0, v9

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    .line 206
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mFindCounts"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v10, 0x0

    :goto_9
    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    aget-object v28, v21, v10

    aput-object v28, v27, v10

    .line 207
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 165
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 175
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 185
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 195
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 211
    :cond_e
    move/from16 v11, v19

    .line 212
    .local v11, j:I
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_14

    .line 213
    const/16 v27, 0x4

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 214
    const/16 v27, 0x0

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x1

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x2

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x3

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-ne v0, v1, :cond_11

    .line 212
    :cond_f
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 217
    :cond_10
    const/16 v27, 0x3

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 218
    const/16 v27, 0x0

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x1

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x2

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    .line 230
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    aget-object v28, v23, v10

    aput-object v28, v27, v11

    .line 231
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 221
    :cond_12
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 222
    const/16 v27, 0x0

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_f

    const/16 v27, 0x1

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-ne v0, v1, :cond_11

    goto :goto_b

    .line 225
    :cond_13
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 226
    const/16 v27, 0x0

    aget v27, v20, v27

    move/from16 v0, v27

    move v1, v10

    if-ne v0, v1, :cond_11

    goto :goto_b

    .line 234
    :cond_14
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v9, :cond_15

    .line 235
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "== after locale : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 252
    :cond_15
    const/4 v10, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move v0, v10

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, l:Ljava/lang/String;
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "for loop// Country: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", Language: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 258
    const-string v27, "LocalePicker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "for loop// index: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move/from16 v16, v10

    .line 268
    .end local v5           #c:Ljava/lang/String;
    .end local v12           #l:Ljava/lang/String;
    :cond_16
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v27, 0x109000f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v28, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 270
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 275
    return-void

    .line 252
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    .restart local v5       #c:Ljava/lang/String;
    .restart local v12       #l:Ljava/lang/String;
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    .end local v5           #c:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #l:Ljava/lang/String;
    .end local v19           #mFindCounts:I
    .end local v20           #mFindIndexs:[I
    .end local v21           #mFindLocales:[Lcom/android/settings/LocalePicker$Loc;
    .end local v23           #mTempLocales:[Lcom/android/settings/LocalePicker$Loc;
    .restart local v14       #len:I
    .restart local v26       #s:Ljava/lang/String;
    :cond_18
    move v8, v9

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    goto/16 :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v9, "LocalePicker"

    .line 306
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 307
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 309
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v6, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v4, v6, p3

    .line 310
    .local v4, loc:Lcom/android/settings/LocalePicker$Loc;
    iget-object v6, v4, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 313
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 315
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 317
    const-string v6, "com.android.providers.settings"

    invoke-static {v6}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 320
    const-string v6, "gsm.sim.lenguageEvent"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/4 v6, 0x7

    iget-object v7, v4, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(ILjava/lang/String;)V

    .line 322
    .local v5, stkEventLanguage:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.stk.event"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "STK EVENT"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePicker;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    const-string v6, "LocalePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onListItemClick intent!!!!!!!!!!!!!!! = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #loc:Lcom/android/settings/LocalePicker$Loc;
    .end local v5           #stkEventLanguage:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->finish()V

    .line 356
    return-void

    .line 351
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 353
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "LocalePicker"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 301
    return-void
.end method
