.class public Landroid/provider/ContactsContract$StatusUpdates;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$StatusColumns;
.implements Landroid/provider/ContactsContract$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusUpdates"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/status-update"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/status-update"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/ContactsContract$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .locals 1
    .parameter "status"

    .prologue
    packed-switch p0, :pswitch_data_0

    const v0, 0x108006a

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x108006b

    goto :goto_0

    :pswitch_1
    const v0, 0x1080067

    goto :goto_0

    :pswitch_2
    const v0, 0x1080068

    goto :goto_0

    :pswitch_3
    const v0, 0x1080069

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final getPresencePrecedence(I)I
    .locals 0
    .parameter "status"

    .prologue
    return p0
.end method
