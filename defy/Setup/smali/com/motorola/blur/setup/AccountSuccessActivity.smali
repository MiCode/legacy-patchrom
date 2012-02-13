.class public Lcom/motorola/blur/setup/AccountSuccessActivity;
.super Landroid/app/Activity;
.source "AccountSuccessActivity.java"


# static fields
.field private static final PRIORITY_FOUR:I = 0x3

.field private static final PRIORITY_ONE:I = 0x0

.field private static final PRIORITY_THREE:I = 0x2

.field private static final PRIORITY_TWO:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION:Ljava/lang/String; = "providers_id =?"

.field private static final TAG:Ljava/lang/String; = "SetupASA"

.field private static final sPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

.field private final mHandler:Landroid/os/Handler;

.field private mProviderId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 35
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "capability"

    aput-object v2, v1, v4

    sput-object v1, Lcom/motorola/blur/setup/AccountSuccessActivity;->PROJECTION:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sput-object v0, Lcom/motorola/blur/setup/AccountSuccessActivity;->sPriorityMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;

    .line 55
    new-instance v0, Lcom/motorola/blur/setup/AccountSuccessActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountSuccessActivity$1;-><init>(Lcom/motorola/blur/setup/AccountSuccessActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/AccountSuccessActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/AccountSuccessActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    return-object v0
.end method

.method private fillScreen([Z)V
    .locals 11
    .parameter "capabilities"

    .prologue
    .line 140
    iget-object v4, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;

    .line 141
    .local v4, providerId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 142
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderPrettyName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, prettyName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "activesync"

    invoke-static {v5, v9}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 146
    const v7, 0x7f0b0015

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 147
    .local v2, image:Landroid/widget/ImageView;
    const v7, 0x3020176

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    const v7, 0x7f0b0017

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #image:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 149
    .restart local v2       #image:Landroid/widget/ImageView;
    const v7, 0x7f02001f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    const v7, 0x7f0b0018

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #image:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .restart local v2       #image:Landroid/widget/ImageView;
    const v7, 0x3020162

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    const v7, 0x7f0b001c

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #image:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 153
    .restart local v2       #image:Landroid/widget/ImageView;
    const v7, 0x3020168

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    const v7, 0x7f0b0016

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 155
    .local v6, text:Landroid/widget/TextView;
    const v7, 0x30a0127

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const v7, 0x7f0b0019

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 157
    .restart local v6       #text:Landroid/widget/TextView;
    const v7, 0x30a012d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 158
    const v7, 0x7f0b001d

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 159
    .restart local v6       #text:Landroid/widget/TextView;
    const v7, 0x30a012c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const v7, 0x7f0b001e

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 161
    .restart local v6       #text:Landroid/widget/TextView;
    const v7, 0x7f0c0056

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "{0}"

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 165
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v6           #text:Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/motorola/blur/util/cache/ProviderIconCache;->singleton(Landroid/content/Context;Landroid/os/Looper;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    .line 166
    iget-object v7, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/motorola/blur/util/cache/ProviderIconCache;->setMaxPhotoLengthPixels(I)V

    .line 167
    iget-object v7, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v8, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/motorola/blur/util/cache/ProviderIconCache;->addOnCacheChangedListener(Landroid/os/Handler;)V

    .line 168
    iget-object v7, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v8, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "_thumb.png"

    invoke-virtual {v7, v8, v9, v10}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, bm:Landroid/graphics/Bitmap;
    const v7, 0x7f0b0015

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 171
    .restart local v2       #image:Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :goto_1
    const v7, 0x7f0b0016

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 179
    .restart local v6       #text:Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, count:I
    const/4 v7, 0x0

    aget-boolean v7, p1, v7

    if-eqz v7, :cond_2

    .line 183
    const v7, 0x3020172

    const v8, 0x7f0c0052

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a0126

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoOne(ILjava/lang/String;I)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 189
    :cond_2
    const/4 v7, 0x1

    aget-boolean v7, p1, v7

    if-eqz v7, :cond_7

    .line 190
    if-lez v1, :cond_6

    .line 191
    const v7, 0x3020176

    const v8, 0x7f0c0053

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a0127

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoTwo(ILjava/lang/String;I)V

    .line 197
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 209
    :cond_3
    :goto_3
    const/4 v7, 0x3

    aget-boolean v7, p1, v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    if-ge v1, v7, :cond_4

    .line 210
    if-lez v1, :cond_9

    .line 211
    const v7, 0x3020170

    const v8, 0x7f0c0055

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a012b

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoTwo(ILjava/lang/String;I)V

    .line 221
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 224
    :cond_4
    const/4 v7, 0x2

    if-ge v1, v7, :cond_0

    const/4 v7, 0x3

    aget-boolean v7, p1, v7

    if-nez v7, :cond_0

    .line 225
    const v7, 0x7f0b001a

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 226
    const v7, 0x7f0b001b

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 174
    .end local v1           #count:I
    .end local v6           #text:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 194
    .restart local v1       #count:I
    .restart local v6       #text:Landroid/widget/TextView;
    :cond_6
    const v7, 0x3020176

    const v8, 0x7f0c0053

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a0127

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoOne(ILjava/lang/String;I)V

    goto :goto_2

    .line 198
    :cond_7
    const/4 v7, 0x2

    aget-boolean v7, p1, v7

    if-eqz v7, :cond_3

    .line 199
    if-lez v1, :cond_8

    .line 200
    const v7, 0x3020176

    const v8, 0x7f0c0054

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a0127

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoTwo(ILjava/lang/String;I)V

    .line 206
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 203
    :cond_8
    const v7, 0x3020176

    const v8, 0x7f0c0054

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a0127

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoOne(ILjava/lang/String;I)V

    goto :goto_5

    .line 215
    :cond_9
    const v7, 0x3020170

    const v8, 0x7f0c0055

    invoke-virtual {p0, v8}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x30a012b

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoOne(ILjava/lang/String;I)V

    .line 218
    const v7, 0x3020164

    const/4 v8, 0x0

    const v9, 0x30a0128

    invoke-direct {p0, v7, v8, v9}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setCapabilityInfoTwo(ILjava/lang/String;I)V

    goto/16 :goto_4
.end method

.method public static loadCapabilities(Landroid/content/Context;J)[Z
    .locals 11
    .parameter "context"
    .parameter "providerId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/setup/AccountSuccessActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "providers_id =?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 261
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v6, v0, [Z

    fill-array-data v6, :array_0

    .line 262
    .local v6, capabilities:[Z
    const/4 v7, -0x1

    .line 263
    .local v7, capability:I
    if-eqz v8, :cond_2

    .line 264
    .end local p0
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 266
    sget-object v0, Lcom/motorola/blur/setup/AccountSuccessActivity;->sPriorityMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/motorola/blur/setup/AccountSuccessActivity;->sPriorityMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput-boolean v10, v6, v0

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    return-object v6

    .line 261
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private setCapabilityInfoOne(ILjava/lang/String;I)V
    .locals 3
    .parameter "drawable"
    .parameter "description"
    .parameter "label"

    .prologue
    .line 235
    const v2, 0x7f0b0018

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    const v2, 0x7f0b001f

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v2, 0x7f0b0019

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 240
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 241
    return-void
.end method

.method private setCapabilityInfoTwo(ILjava/lang/String;I)V
    .locals 3
    .parameter "drawable"
    .parameter "description"
    .parameter "label"

    .prologue
    .line 247
    const v2, 0x7f0b001c

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    const v2, 0x7f0b0020

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    .local v1, text:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 251
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 254
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->finish()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setContentView(I)V

    .line 86
    const/4 v7, 0x4

    new-array v2, v7, [Z

    fill-array-data v2, :array_0

    .line 87
    .local v2, capabilities:[Z
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 88
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 89
    const-string v7, "providers_id"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mProviderId:Ljava/lang/Long;

    .line 90
    const-string v7, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, background:I
    if-lez v1, :cond_0

    .line 92
    const v7, 0x7f0b0014

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .end local v6           #view:Landroid/view/View;
    :cond_0
    const-string v7, "capability"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    .line 96
    .local v3, caps:[Z
    if-eqz v3, :cond_1

    .line 97
    move-object v2, v3

    .line 103
    .end local v1           #background:I
    .end local v3           #caps:[Z
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->fillScreen([Z)V

    .line 104
    const v7, 0x7f0b0011

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/AccountSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 106
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v7, 0x7f0c0069

    const v8, 0x7f0b0003

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    .line 107
    .local v4, doneButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 108
    new-instance v7, Lcom/motorola/blur/setup/AccountSuccessActivity$2;

    invoke-direct {v7, p0}, Lcom/motorola/blur/setup/AccountSuccessActivity$2;-><init>(Lcom/motorola/blur/setup/AccountSuccessActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void

    .line 100
    .end local v0           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v4           #doneButton:Landroid/widget/Button;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->finish()V

    goto :goto_0

    .line 86
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->removeOnCacheChangedDataListener(Landroid/os/Handler;)V

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    return-void
.end method
