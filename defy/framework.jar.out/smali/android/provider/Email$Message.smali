.class public final Landroid/provider/Email$Message;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Email$NodeColumns;
.implements Landroid/provider/Email$MessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.motorola.blur.email.message"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.motorola.blur.email.message"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date_received DESC, modified DESC"

.field public static final MESSAGE_FLAGS_URI:Landroid/net/Uri;

.field public static final NEW_MESSAGES_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Landroid/provider/Email$ContentUri;->MESSAGES:Landroid/net/Uri;

    sput-object v0, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Email$ContentUri;->NEW_MESSAGES:Landroid/net/Uri;

    sput-object v0, Landroid/provider/Email$Message;->NEW_MESSAGES_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Email$ContentUri;->MESSAGE_FLAGS:Landroid/net/Uri;

    sput-object v0, Landroid/provider/Email$Message;->MESSAGE_FLAGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
