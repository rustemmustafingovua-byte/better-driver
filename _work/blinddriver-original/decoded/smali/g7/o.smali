.class public final Lg7/o;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg7/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:I

.field public final m:Landroid/os/IBinder;

.field public final n:Ld7/a;

.field public final o:Z

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lg7/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Ld7/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg7/o;->l:I

    iput-object p2, p0, Lg7/o;->m:Landroid/os/IBinder;

    iput-object p3, p0, Lg7/o;->n:Ld7/a;

    iput-boolean p4, p0, Lg7/o;->o:Z

    iput-boolean p5, p0, Lg7/o;->p:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lg7/o;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    check-cast p1, Lg7/o;

    iget-object v0, p0, Lg7/o;->n:Ld7/a;

    iget-object v1, p1, Lg7/o;->n:Ld7/a;

    invoke-virtual {v0, v1}, Ld7/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    const/4 v1, 0x0

    iget-object p0, p0, Lg7/o;->m:Landroid/os/IBinder;

    if-nez p0, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    sget v2, Lg7/a;->d:I

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lg7/f;

    if-eqz v3, :cond_4

    check-cast v2, Lg7/f;

    goto :goto_0

    :cond_4
    new-instance v2, Lg7/e0;

    invoke-direct {v2, p0}, Lg7/e0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object p0, p1, Lg7/o;->m:Landroid/os/IBinder;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    sget p1, Lg7/a;->d:I

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lg7/f;

    if-eqz v0, :cond_6

    move-object v1, p1

    check-cast v1, Lg7/f;

    goto :goto_1

    :cond_6
    new-instance v1, Lg7/e0;

    invoke-direct {v1, p0}, Lg7/e0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {v2, v1}, Lg7/s;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v1, p0, Lg7/o;->l:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lg7/o;->m:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v3}, Lwa/h;->E(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x3

    iget-object v3, p0, Lg7/o;->n:Ld7/a;

    invoke-static {p1, v1, v3, p2}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v2, v2}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lg7/o;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    invoke-static {p1, p2, v2}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lg7/o;->p:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
