.class public final Lt7/e;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt7/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lt7/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7/e;->l:Ljava/util/List;

    iput-object p2, p0, Lt7/e;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lt7/e;->l:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p1, v1}, Lwa/h;->E(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x2

    iget-object p0, p0, Lt7/e;->m:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lwa/h;->A(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
