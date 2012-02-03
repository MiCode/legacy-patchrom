.class public final Landroid/provider/SocialContract$Activities;
.super Ljava/lang/Object;
.source "SocialContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SocialContract$ActivitiesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SocialContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activities"
.end annotation


# static fields
.field public static final CONTENT_AUTHORED_BY_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CONTACT_STATUS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/activity"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/activity"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Landroid/provider/SocialContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "activities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SocialContract$Activities;->CONTENT_URI:Landroid/net/Uri;

    .line 163
    sget-object v0, Landroid/provider/SocialContract$Activities;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "authored_by"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SocialContract$Activities;->CONTENT_AUTHORED_BY_URI:Landroid/net/Uri;

    .line 171
    sget-object v0, Landroid/provider/SocialContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contact_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SocialContract$Activities;->CONTENT_CONTACT_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method
