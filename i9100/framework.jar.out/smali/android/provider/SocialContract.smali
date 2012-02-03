.class public Landroid/provider/SocialContract;
.super Ljava/lang/Object;
.source "SocialContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SocialContract$Activities;,
        Landroid/provider/SocialContract$ActivitiesColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.social"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://com.android.social"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SocialContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method
