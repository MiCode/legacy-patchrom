.class interface abstract Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;
.super Ljava/lang/Object;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContactQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTACT_PRESENCE_STATUS:I = 0x6

.field public static final CONTACT_STATUS:I = 0x7

.field public static final CONTACT_STATUS_LABEL:I = 0xa

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0x9

.field public static final CONTACT_STATUS_TIMESTAMP:I = 0x8

.field public static final DISPLAY_NAME:I = 0x3

.field public static final LOOKUP_KEY:I = 0x1

.field public static final PHONETIC_NAME:I = 0x4

.field public static final PHOTO_ID:I = 0x2

.field public static final STARRED:I = 0x5

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_status_label"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
