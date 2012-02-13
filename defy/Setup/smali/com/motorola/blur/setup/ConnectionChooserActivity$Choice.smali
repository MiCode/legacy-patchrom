.class Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;
.super Ljava/lang/Object;
.source "ConnectionChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ConnectionChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Choice"
.end annotation


# static fields
.field public static final RETRY:I = 0x1

.field public static final SKIP:I = 0x2

.field public static final WIFI:I


# instance fields
.field public final choice:I

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "label"
    .parameter "choice"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;->label:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;->choice:I

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;->label:Ljava/lang/String;

    return-object v0
.end method
