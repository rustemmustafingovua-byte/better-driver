.class public final Lt7/f;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt7/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:I

.field public final m:Ld7/a;

.field public final n:Lg7/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lt7/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILd7/a;Lg7/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt7/f;->l:I

    iput-object p2, p0, Lt7/f;->m:Ld7/a;

    iput-object p3, p0, Lt7/f;->n:Lg7/o;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v1, p0, Lt7/f;->l:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lt7/f;->m:Ld7/a;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object p0, p0, Lt7/f;->n:Lg7/o;

    invoke-static {p1, v1, p0, p2}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
