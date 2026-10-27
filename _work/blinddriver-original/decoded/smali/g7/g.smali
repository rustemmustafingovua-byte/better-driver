.class public final Lg7/g;
.super Lh7/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg7/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:J

.field public final p:J

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(I)V

    sput-object v0, Lg7/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg7/g;->l:I

    iput p2, p0, Lg7/g;->m:I

    iput p3, p0, Lg7/g;->n:I

    iput-wide p4, p0, Lg7/g;->o:J

    iput-wide p6, p0, Lg7/g;->p:J

    iput-object p8, p0, Lg7/g;->q:Ljava/lang/String;

    iput-object p9, p0, Lg7/g;->r:Ljava/lang/String;

    iput p10, p0, Lg7/g;->s:I

    iput p11, p0, Lg7/g;->t:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v0, p0, Lg7/g;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v0, p0, Lg7/g;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v0, p0, Lg7/g;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p1, v1, v0}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lg7/g;->o:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lg7/g;->p:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x6

    iget-object v3, p0, Lg7/g;->q:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lwa/h;->A(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Lg7/g;->r:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lwa/h;->A(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget v0, p0, Lg7/g;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    invoke-static {p1, v0, v1}, Lwa/h;->F(Landroid/os/Parcel;II)V

    iget p0, p0, Lg7/g;->t:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method
