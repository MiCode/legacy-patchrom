.class public Lcom/android/phone/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CityIdInfo$CookieWrapper;,
        Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field public static final CITYID_DATA_KEY:Ljava/lang/String; = "com.cequint.cityidinfo"

.field private static final COLUMN_CITY:I = 0x2

.field private static final COLUMN_COUNT:I = 0x1

.field private static final COLUMN_COUNTRY:I = 0x5

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_ISNANP:I = 0x6

.field private static final COLUMN_STATE:I = 0x3

.field private static final COLUMN_STATE_ABRV:I = 0x4

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.cequint.cityid"

.field private static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CityIdInfo"


# instance fields
.field private mChinalocation:Lcom/android/phone/ChinaCityIdInfo;

.field private mCityName:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mIsNanpNum:Z

.field private mStateAbrv:Ljava/lang/String;

.field private mStateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CityIdInfo;->mIsNanpNum:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 77
    sget-boolean v0, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/phone/ChinaCityIdInfo;

    invoke-direct {v0}, Lcom/android/phone/ChinaCityIdInfo;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->mChinalocation:Lcom/android/phone/ChinaCityIdInfo;

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/phone/CityIdInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/phone/CityIdInfo;->mIsNanpNum:Z

    return p1
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const-string v5, "com.cequint.cityid"

    .line 86
    sget-boolean v5, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    if-eqz v5, :cond_0

    .line 87
    invoke-static {p0}, Lcom/android/phone/ChinaCityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v5

    .line 105
    :goto_0
    return v5

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 92
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.cequint.cityid"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 94
    .local v3, info:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v5, v5

    if-nez v5, :cond_2

    :cond_1
    move v5, v7

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 99
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 100
    .local v0, authority:Ljava/lang/String;
    const-string v5, "com.cequint.cityid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    const/4 v5, 0x1

    goto :goto_0

    .line 98
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #authority:Ljava/lang/String;
    :cond_4
    move v5, v7

    .line 103
    goto :goto_0

    .line 104
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v5, v7

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 10
    .parameter "paint"
    .parameter "wAvailable"

    .prologue
    const-string v9, "CityIdInfo"

    const-string v8, "..., "

    const-string v7, ", "

    .line 116
    sget-boolean v5, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mChinalocation:Lcom/android/phone/ChinaCityIdInfo;

    invoke-virtual {v5, p1, p2}, Lcom/android/phone/ChinaCityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v5

    .line 163
    :goto_0
    return-object v5

    .line 121
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 124
    iget-boolean v5, p0, Lcom/android/phone/CityIdInfo;->mIsNanpNum:Z

    if-eqz v5, :cond_4

    .line 126
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 162
    :goto_1
    const-string v5, "CityIdInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display City Info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    const-string v6, ", "

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 136
    const-string v5, "CityIdInfo"

    const-string v5, "Need truncate city name"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v0, v5

    .line 139
    .local v0, curCityNameWidth:I
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const-string v6, "..., "

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 140
    .local v3, otherStrWidth:I
    sub-int v2, p2, v3

    .line 142
    .local v2, maxCityNameWidth:I
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 143
    .local v1, len:I
    new-array v4, v1, [F

    .line 144
    .local v4, widths:[F
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 145
    :goto_2
    if-le v0, v2, :cond_2

    .line 146
    const/4 v5, 0x1

    sub-int v5, v1, v5

    aget v5, v4, v5

    float-to-int v5, v5

    sub-int/2addr v0, v5

    .line 147
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 150
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..., "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    .end local v0           #curCityNameWidth:I
    .end local v1           #len:I
    .end local v2           #maxCityNameWidth:I
    .end local v3           #otherStrWidth:I
    .end local v4           #widths:[F
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 159
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 8
    .parameter "context"
    .parameter "strNumber"
    .parameter "isIncoming"
    .parameter "isNanpNetwork"

    .prologue
    .line 169
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/phone/CityIdInfo;->mChinalocation:Lcom/android/phone/ChinaCityIdInfo;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/phone/ChinaCityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 181
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .line 186
    .local v4, flags:[Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 188
    const-string v1, "CityIdInfo"

    const-string v2, "Now is in NANP network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    const-string v2, "NANP"

    aput-object v2, v4, v1

    .line 193
    :goto_1
    if-eqz p3, :cond_3

    .line 195
    const/4 v1, 0x1

    const-string v2, "system"

    aput-object v2, v4, v1

    .line 196
    const/4 v1, 0x2

    const-string v2, "incoming"

    aput-object v2, v4, v1

    .line 202
    :goto_2
    const/4 v6, 0x0

    .line 204
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 210
    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 213
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 214
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 215
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 216
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "City   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->mIsNanpNum:Z

    .line 226
    :goto_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 191
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_1

    .line 198
    :cond_3
    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v4, v1

    .line 199
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_2

    .line 205
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 206
    .local v7, ex:Ljava/lang/NullPointerException;
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 220
    .end local v7           #ex:Ljava/lang/NullPointerException;
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 224
    :cond_5
    const-string v1, "CityIdInfo"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V
    .locals 10
    .parameter "context"
    .parameter "strNumber"
    .parameter "isIncoming"
    .parameter "isNanpNetwork"
    .parameter "listener"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v9, "CityIdInfo"

    .line 235
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->mChinalocation:Lcom/android/phone/ChinaCityIdInfo;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ChinaCityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 247
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 250
    .local v8, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/phone/CityIdInfo$1;

    invoke-direct {v0, p0, v8}, Lcom/android/phone/CityIdInfo$1;-><init>(Lcom/android/phone/CityIdInfo;Landroid/content/ContentResolver;)V

    .line 279
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    .line 281
    .local v6, flags:[Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 283
    const-string v1, "CityIdInfo"

    const-string v1, "Now is in NANP network"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "NANP"

    aput-object v1, v6, v3

    .line 288
    :goto_1
    if-eqz p3, :cond_3

    .line 290
    const-string v1, "system"

    aput-object v1, v6, v5

    .line 291
    const-string v1, "incoming"

    aput-object v1, v6, v7

    .line 297
    :goto_2
    const/4 v1, -0x1

    sget-object v3, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    aput-object v4, v6, v3

    goto :goto_1

    .line 293
    :cond_3
    const-string v1, "user"

    aput-object v1, v6, v5

    .line 294
    aput-object v4, v6, v7

    goto :goto_2
.end method
