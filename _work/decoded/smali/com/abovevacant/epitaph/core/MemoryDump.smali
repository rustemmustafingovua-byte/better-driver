.class public final Lcom/abovevacant/epitaph/core/MemoryDump;
.super Ljava/lang/Object;
.source "MemoryDump.java"


# instance fields
.field public final armMteMetadata:Lcom/abovevacant/epitaph/core/ArmMTEMetadata;

.field public final beginAddress:J

.field public final mappingName:Ljava/lang/String;

.field public final memory:[B

.field public final registerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[BLcom/abovevacant/epitaph/core/ArmMTEMetadata;)V
    .locals 0
    .param p1, "registerName"    # Ljava/lang/String;
    .param p2, "mappingName"    # Ljava/lang/String;
    .param p3, "beginAddress"    # J
    .param p5, "memory"    # [B
    .param p6, "armMteMetadata"    # Lcom/abovevacant/epitaph/core/ArmMTEMetadata;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "registerName",
            "mappingName",
            "beginAddress",
            "memory",
            "armMteMetadata"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/MemoryDump;->registerName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/MemoryDump;->mappingName:Ljava/lang/String;

    .line 29
    iput-wide p3, p0, Lcom/abovevacant/epitaph/core/MemoryDump;->beginAddress:J

    .line 30
    iput-object p5, p0, Lcom/abovevacant/epitaph/core/MemoryDump;->memory:[B

    .line 31
    iput-object p6, p0, Lcom/abovevacant/epitaph/core/MemoryDump;->armMteMetadata:Lcom/abovevacant/epitaph/core/ArmMTEMetadata;

    .line 32
    return-void
.end method
