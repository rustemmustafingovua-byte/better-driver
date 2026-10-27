.class public final enum Lcom/graphhopper/storage/DAType$MemRef;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/DAType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/storage/DAType$MemRef;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/storage/DAType$MemRef;

.field public static final enum HEAP:Lcom/graphhopper/storage/DAType$MemRef;

.field public static final enum MMAP:Lcom/graphhopper/storage/DAType$MemRef;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/storage/DAType$MemRef;
    .locals 2

    sget-object v0, Lcom/graphhopper/storage/DAType$MemRef;->HEAP:Lcom/graphhopper/storage/DAType$MemRef;

    sget-object v1, Lcom/graphhopper/storage/DAType$MemRef;->MMAP:Lcom/graphhopper/storage/DAType$MemRef;

    filled-new-array {v0, v1}, [Lcom/graphhopper/storage/DAType$MemRef;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/storage/DAType$MemRef;

    const-string v1, "HEAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/storage/DAType$MemRef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/storage/DAType$MemRef;->HEAP:Lcom/graphhopper/storage/DAType$MemRef;

    new-instance v0, Lcom/graphhopper/storage/DAType$MemRef;

    const-string v1, "MMAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/storage/DAType$MemRef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/storage/DAType$MemRef;->MMAP:Lcom/graphhopper/storage/DAType$MemRef;

    invoke-static {}, Lcom/graphhopper/storage/DAType$MemRef;->$values()[Lcom/graphhopper/storage/DAType$MemRef;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/storage/DAType$MemRef;->$VALUES:[Lcom/graphhopper/storage/DAType$MemRef;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/storage/DAType$MemRef;
    .locals 1

    const-class v0, Lcom/graphhopper/storage/DAType$MemRef;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/storage/DAType$MemRef;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/storage/DAType$MemRef;
    .locals 1

    sget-object v0, Lcom/graphhopper/storage/DAType$MemRef;->$VALUES:[Lcom/graphhopper/storage/DAType$MemRef;

    invoke-virtual {v0}, [Lcom/graphhopper/storage/DAType$MemRef;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/storage/DAType$MemRef;

    return-object v0
.end method
