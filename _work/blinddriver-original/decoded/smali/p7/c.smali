.class public final Lp7/c;
.super Ln7/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lu7/d;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lu7/d;)V
    .locals 0

    iput-object p1, p0, Lp7/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lp7/c;->e:Lu7/d;

    const-string p1, "com.google.android.gms.common.api.internal.IStatusCallback"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ln7/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Ln7/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Ln7/c;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lp7/c;->e:Lu7/d;

    iget-object p2, p2, Lu7/d;->a:Lu7/i;

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->l:I

    if-gtz v0, :cond_0

    iget-object p0, p0, Lp7/c;->d:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lu7/i;->d(Ljava/lang/Object;)V

    return p3

    :cond_0
    iget-object p0, p1, Lcom/google/android/gms/common/api/Status;->n:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    new-instance p0, Le7/j;

    invoke-direct {p0, p1}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    new-instance p0, Le7/d;

    invoke-direct {p0, p1}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {p2, p0}, Lu7/i;->c(Ljava/lang/Exception;)V

    return p3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
