.class public Lcom/graphhopper/storage/DAType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/DAType$MemRef;
    }
.end annotation


# static fields
.field public static final MMAP:Lcom/graphhopper/storage/DAType;

.field public static final MMAP_RO:Lcom/graphhopper/storage/DAType;

.field public static final RAM:Lcom/graphhopper/storage/DAType;

.field public static final RAM_INT:Lcom/graphhopper/storage/DAType;

.field public static final RAM_INT_STORE:Lcom/graphhopper/storage/DAType;

.field public static final RAM_STORE:Lcom/graphhopper/storage/DAType;


# instance fields
.field private final allowWrites:Z

.field private final integ:Z

.field private final memRef:Lcom/graphhopper/storage/DAType$MemRef;

.field private final storing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/graphhopper/storage/DAType;

    sget-object v1, Lcom/graphhopper/storage/DAType$MemRef;->HEAP:Lcom/graphhopper/storage/DAType$MemRef;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->RAM:Lcom/graphhopper/storage/DAType;

    new-instance v0, Lcom/graphhopper/storage/DAType;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->RAM_INT:Lcom/graphhopper/storage/DAType;

    new-instance v0, Lcom/graphhopper/storage/DAType;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    new-instance v0, Lcom/graphhopper/storage/DAType;

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->RAM_INT_STORE:Lcom/graphhopper/storage/DAType;

    new-instance v0, Lcom/graphhopper/storage/DAType;

    sget-object v1, Lcom/graphhopper/storage/DAType$MemRef;->MMAP:Lcom/graphhopper/storage/DAType$MemRef;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->MMAP:Lcom/graphhopper/storage/DAType;

    new-instance v0, Lcom/graphhopper/storage/DAType;

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    sput-object v0, Lcom/graphhopper/storage/DAType;->MMAP_RO:Lcom/graphhopper/storage/DAType;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    .line 4
    iput-boolean p2, p0, Lcom/graphhopper/storage/DAType;->storing:Z

    .line 5
    iput-boolean p3, p0, Lcom/graphhopper/storage/DAType;->integ:Z

    .line 6
    iput-boolean p4, p0, Lcom/graphhopper/storage/DAType;->allowWrites:Z

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/DAType;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/storage/DAType;->getMemRef()Lcom/graphhopper/storage/DAType$MemRef;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result v1

    invoke-virtual {p1}, Lcom/graphhopper/storage/DAType;->isInteg()Z

    move-result v2

    invoke-virtual {p1}, Lcom/graphhopper/storage/DAType;->isAllowWrites()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/graphhopper/storage/DAType;-><init>(Lcom/graphhopper/storage/DAType$MemRef;ZZZ)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/graphhopper/storage/DAType;
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SYNC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MMAP_RO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/storage/DAType;->MMAP_RO:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_0
    const-string v0, "MMAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/graphhopper/storage/DAType;->MMAP:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_1
    const-string v0, "UNSAFE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "RAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UNSAFE option is no longer supported, see #1620"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SYNC option is no longer supported, see #982"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/graphhopper/storage/DAType;

    iget-object v1, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    iget-object v2, p1, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/graphhopper/storage/DAType;->storing:Z

    iget-boolean v2, p1, Lcom/graphhopper/storage/DAType;->storing:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean p0, p0, Lcom/graphhopper/storage/DAType;->integ:Z

    iget-boolean p1, p1, Lcom/graphhopper/storage/DAType;->integ:Z

    if-eq p0, p1, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public getMemRef()Lcom/graphhopper/storage/DAType$MemRef;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x19d

    mul-int/lit8 v0, v0, 0x3b

    iget-boolean v1, p0, Lcom/graphhopper/storage/DAType;->storing:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    iget-boolean p0, p0, Lcom/graphhopper/storage/DAType;->integ:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public isAllowWrites()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/DAType;->allowWrites:Z

    return p0
.end method

.method public isInMemory()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    sget-object v0, Lcom/graphhopper/storage/DAType$MemRef;->HEAP:Lcom/graphhopper/storage/DAType$MemRef;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInteg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/DAType;->integ:Z

    return p0
.end method

.method public isMMap()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/storage/DAType;->memRef:Lcom/graphhopper/storage/DAType$MemRef;

    sget-object v0, Lcom/graphhopper/storage/DAType$MemRef;->MMAP:Lcom/graphhopper/storage/DAType$MemRef;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStoring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/DAType;->storing:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->getMemRef()Lcom/graphhopper/storage/DAType$MemRef;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/storage/DAType$MemRef;->MMAP:Lcom/graphhopper/storage/DAType$MemRef;

    if-ne v0, v1, :cond_0

    const-string v0, "MMAP"

    goto :goto_0

    :cond_0
    const-string v0, "RAM"

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->isInteg()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_INT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "_STORE"

    invoke-static {v0, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
