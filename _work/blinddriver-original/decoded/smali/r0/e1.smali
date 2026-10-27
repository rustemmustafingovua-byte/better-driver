.class public final Lr0/e1;
.super Ld1/i0;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ld1/r;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr0/e1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Lr0/m2;

.field public n:Lr0/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/e1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lr0/m2;)V
    .locals 3

    invoke-direct {p0}, Ld1/i0;-><init>()V

    iput-object p2, p0, Lr0/e1;->m:Lr0/m2;

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object p2

    new-instance v0, Lr0/l2;

    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lr0/l2;-><init>(JLjava/lang/Object;)V

    instance-of p2, p2, Ld1/b;

    if-nez p2, :cond_0

    new-instance p2, Lr0/l2;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-direct {p2, v1, v2, p1}, Lr0/l2;-><init>(JLjava/lang/Object;)V

    iput-object p2, v0, Ld1/j0;->b:Ld1/j0;

    :cond_0
    iput-object v0, p0, Lr0/e1;->n:Lr0/l2;

    return-void
.end method


# virtual methods
.method public final a()Ld1/j0;
    .locals 0

    iget-object p0, p0, Lr0/e1;->n:Lr0/l2;

    return-object p0
.end method

.method public final b(Ld1/j0;Ld1/j0;Ld1/j0;)Ld1/j0;
    .locals 0

    check-cast p1, Lr0/l2;

    move-object p1, p2

    check-cast p1, Lr0/l2;

    check-cast p3, Lr0/l2;

    iget-object p1, p1, Lr0/l2;->c:Ljava/lang/Object;

    iget-object p3, p3, Lr0/l2;->c:Ljava/lang/Object;

    iget-object p0, p0, Lr0/e1;->m:Lr0/m2;

    invoke-interface {p0, p1, p3}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lr0/m2;
    .locals 0

    iget-object p0, p0, Lr0/e1;->m:Lr0/m2;

    return-object p0
.end method

.method public final d(Ld1/j0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr0/l2;

    iput-object p1, p0, Lr0/e1;->n:Lr0/l2;

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr0/e1;->n:Lr0/l2;

    invoke-static {v0, p0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Lr0/l2;

    iget-object p0, p0, Lr0/l2;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lr0/e1;->n:Lr0/l2;

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/l2;

    iget-object v1, p0, Lr0/e1;->m:Lr0/m2;

    iget-object v2, v0, Lr0/l2;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr0/e1;->n:Lr0/l2;

    sget-object v2, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v3

    invoke-static {v1, p0, v3, v0}, Ld1/p;->o(Ld1/j0;Ld1/i0;Ld1/g;Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/l2;

    iput-object p1, v0, Lr0/l2;->c:Ljava/lang/Object;
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

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr0/e1;->n:Lr0/l2;

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Lr0/l2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lr0/l2;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    sget-object p2, Lr0/e;->o:Lr0/e;

    iget-object p0, p0, Lr0/e1;->m:Lr0/m2;

    invoke-static {p0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Lr0/e;->r:Lr0/e;

    invoke-static {p0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lr0/e;->p:Lr0/e;

    invoke-static {p0, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only known types of MutableState\'s SnapshotMutationPolicy are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
