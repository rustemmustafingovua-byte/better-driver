.class public final Lg7/j;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg7/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:I

.field public m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lg7/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg7/j;->l:I

    iput-object p2, p0, Lg7/j;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v0, p0, Lg7/j;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object p0, p0, Lg7/j;->m:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lwa/h;->C(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, p2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
