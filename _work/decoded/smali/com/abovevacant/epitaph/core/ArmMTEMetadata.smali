.class public final Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
.super Ljava/lang/Object;
.source "ArmMTEMetadata.java"


# instance fields
.field public final memoryTags:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "memoryTags"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "memoryTags"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/ArmMTEMetadata;->memoryTags:[B

    .line 11
    return-void
.end method
