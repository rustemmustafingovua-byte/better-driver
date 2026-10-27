.class public final Lj6/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lj6/m0;

.field public static final r:Lj6/m0;


# instance fields
.field public final l:Lr5/g;

.field public final m:Lr5/g;

.field public final n:Lr5/g;

.field public final o:Lr5/g;

.field public final p:Lr5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lj6/m0;

    sget-object v3, Lr5/g;->l:Lr5/g;

    sget-object v1, Lr5/g;->m:Lr5/g;

    move-object v2, v1

    move-object v4, v3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    sput-object v0, Lj6/m0;->q:Lj6/m0;

    new-instance v4, Lj6/m0;

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    sput-object v4, Lj6/m0;->r:Lj6/m0;

    return-void
.end method

.method public constructor <init>(Lr5/g;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lr5/g;->o:Lr5/g;

    if-ne p1, v0, :cond_0

    .line 9
    sget-object p1, Lr5/g;->m:Lr5/g;

    iput-object p1, p0, Lj6/m0;->l:Lr5/g;

    .line 10
    iput-object p1, p0, Lj6/m0;->m:Lr5/g;

    .line 11
    sget-object v0, Lr5/g;->l:Lr5/g;

    iput-object v0, p0, Lj6/m0;->n:Lr5/g;

    .line 12
    iput-object v0, p0, Lj6/m0;->o:Lr5/g;

    .line 13
    iput-object p1, p0, Lj6/m0;->p:Lr5/g;

    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lj6/m0;->l:Lr5/g;

    .line 15
    iput-object p1, p0, Lj6/m0;->m:Lr5/g;

    .line 16
    iput-object p1, p0, Lj6/m0;->n:Lr5/g;

    .line 17
    iput-object p1, p0, Lj6/m0;->o:Lr5/g;

    .line 18
    iput-object p1, p0, Lj6/m0;->p:Lr5/g;

    return-void
.end method

.method public constructor <init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/m0;->l:Lr5/g;

    .line 3
    iput-object p2, p0, Lj6/m0;->m:Lr5/g;

    .line 4
    iput-object p3, p0, Lj6/m0;->n:Lr5/g;

    .line 5
    iput-object p4, p0, Lj6/m0;->o:Lr5/g;

    .line 6
    iput-object p5, p0, Lj6/m0;->p:Lr5/g;

    return-void
.end method


# virtual methods
.method public final a(Lr5/g;)Lj6/m0;
    .locals 6

    sget-object v0, Lr5/g;->o:Lr5/g;

    if-ne p1, v0, :cond_0

    sget-object p1, Lr5/g;->l:Lr5/g;

    :cond_0
    move-object v4, p1

    iget-object p1, p0, Lj6/m0;->o:Lr5/g;

    if-ne p1, v4, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lj6/m0;

    iget-object v3, p0, Lj6/m0;->n:Lr5/g;

    iget-object v5, p0, Lj6/m0;->p:Lr5/g;

    iget-object v1, p0, Lj6/m0;->l:Lr5/g;

    iget-object v2, p0, Lj6/m0;->m:Lr5/g;

    invoke-direct/range {v0 .. v5}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility: getter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj6/m0;->l:Lr5/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isGetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m0;->m:Lr5/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",setter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m0;->n:Lr5/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/m0;->o:Lr5/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/m0;->p:Lr5/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
