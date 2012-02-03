.class public Landroid/media/audiofx/AudioEffect$Descriptor;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descriptor"
.end annotation


# instance fields
.field public connectMode:Ljava/lang/String;

.field public implementor:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/util/UUID;

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "uuid"
    .parameter "connectMode"
    .parameter "name"
    .parameter "implementor"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    .line 198
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    .line 199
    iput-object p3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 201
    iput-object p5, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 202
    return-void
.end method
