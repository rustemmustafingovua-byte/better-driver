.class public final Lg7/y;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg7/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:Landroid/os/Bundle;

.field public m:[Ld7/c;

.field public n:I

.field public o:Lg7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lg7/y;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lg7/y;->l:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x2

    iget-object v2, p0, Lg7/y;->m:[Ld7/c;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->B(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lg7/y;->n:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lg7/y;->o:Lg7/d;

    invoke-static {p1, v3, p0, p2}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
