.class public final Lt6/h;
.super Lt6/d;
.source "SourceFile"


# instance fields
.field public final x:I

.field public y:Lb6/l;


# direct methods
.method public constructor <init>(I)V
    .locals 9

    sget-object v2, Lt6/o;->r:Lt6/o;

    sget-object v3, Lt6/p;->E:Lt6/k;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-class v1, Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lt6/l;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput p1, v0, Lt6/h;->x:I

    return-void
.end method

.method public static s0()V
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-class v1, Lt6/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation should not be attempted on "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lt6/h;->x:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/h;->R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i0(Lb6/l;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k0(Lb6/n;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m0()Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    invoke-static {}, Lt6/h;->s0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r0()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt6/h;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lt6/h;->R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
