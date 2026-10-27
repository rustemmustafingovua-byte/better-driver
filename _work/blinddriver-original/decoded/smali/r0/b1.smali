.class public final Lr0/b1;
.super Ld1/i0;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ld1/r;
.implements Lr0/u0;
.implements Lr0/r2;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr0/b1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Lr0/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/z0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr0/z0;-><init>(I)V

    sput-object v0, Lr0/b1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ld1/i0;-><init>()V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    new-instance v1, Lr0/j2;

    invoke-virtual {v0}, Ld1/g;->g()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lr0/j2;-><init>(IJ)V

    instance-of v0, v0, Ld1/b;

    if-nez v0, :cond_0

    new-instance v0, Lr0/j2;

    const/4 v2, 0x1

    int-to-long v2, v2

    invoke-direct {v0, p1, v2, v3}, Lr0/j2;-><init>(IJ)V

    iput-object v0, v1, Ld1/j0;->b:Ld1/j0;

    :cond_0
    iput-object v1, p0, Lr0/b1;->m:Lr0/j2;

    return-void
.end method


# virtual methods
.method public final a()Ld1/j0;
    .locals 0

    iget-object p0, p0, Lr0/b1;->m:Lr0/j2;

    return-object p0
.end method

.method public final b(Ld1/j0;Ld1/j0;Ld1/j0;)Ld1/j0;
    .locals 0

    move-object p0, p2

    check-cast p0, Lr0/j2;

    check-cast p3, Lr0/j2;

    iget p0, p0, Lr0/j2;->c:I

    iget p1, p3, Lr0/j2;->c:I

    if-ne p0, p1, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lr0/m2;
    .locals 0

    sget-object p0, Lr0/e;->r:Lr0/e;

    return-object p0
.end method

.method public final d(Ld1/j0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr0/j2;

    iput-object p1, p0, Lr0/b1;->m:Lr0/j2;

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lr0/b1;->m:Lr0/j2;

    invoke-static {v0, p0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Lr0/j2;

    iget p0, p0, Lr0/j2;->c:I

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)V
    .locals 4

    iget-object v0, p0, Lr0/b1;->m:Lr0/j2;

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/j2;

    iget v1, v0, Lr0/j2;->c:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lr0/b1;->m:Lr0/j2;

    sget-object v2, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v3

    invoke-static {v1, p0, v3, v0}, Ld1/p;->o(Ld1/j0;Ld1/i0;Ld1/g;Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/j2;

    iput p1, v0, Lr0/j2;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {v3, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr0/b1;->h(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr0/b1;->m:Lr0/j2;

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/j2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableIntState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lr0/j2;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
