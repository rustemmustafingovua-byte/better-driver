.class public final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lg7/e;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg7/e;->l:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lg7/e;->m:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lg7/e;->n:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lg7/e;->o:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lwa/h;->A(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lg7/e;->p:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-static {p1, v2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lg7/e;->q:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->B(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lg7/e;->r:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    invoke-static {p1, v2}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, Lwa/h;->E(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v1, 0x8

    iget-object v2, p0, Lg7/e;->s:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lg7/e;->t:[Ld7/c;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->B(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lg7/e;->u:[Ld7/c;

    invoke-static {p1, v1, v2, p2}, Lwa/h;->B(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lg7/e;->v:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg7/e;->w:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg7/e;->x:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    iget-object p0, p0, Lg7/e;->y:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lwa/h;->A(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Landroidx/fragment/app/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_0
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {v1, v5}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lg7/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg7/o;

    goto :goto_0

    :cond_1
    sget-object v2, Ld7/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Ld7/a;

    goto :goto_0

    :cond_2
    invoke-static {v1, v5}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lt7/f;

    invoke-direct {v0, v4, v2, v3}, Lt7/f;-><init>(ILd7/a;Lg7/o;)V

    return-object v0

    :pswitch_1
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    invoke-static {v1, v5}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-static {v1, v5}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-static {v1, v5}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v3, :cond_6

    move-object v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v3, v6

    goto :goto_1

    :cond_7
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lt7/e;

    invoke-direct {v0, v3, v4}, Lt7/e;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    invoke-static {v1, v5}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_8
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_2

    :cond_9
    invoke-static {v1, v5}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_a
    invoke-static {v1, v5}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :cond_b
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lt7/b;

    invoke-direct {v0, v3, v4, v2}, Lt7/b;-><init>(IILandroid/content/Intent;)V

    return-object v0

    :pswitch_3
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lg7/e;->z:[Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lg7/e;->A:[Ld7/c;

    move-object v14, v2

    move-object v13, v3

    move-object v11, v4

    move-object v12, v11

    move-object v15, v12

    move-object/from16 v21, v15

    move v8, v5

    move v9, v8

    move v10, v9

    move/from16 v18, v10

    move/from16 v19, v18

    move/from16 v20, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    invoke-static {v1, v2}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_5
    invoke-static {v1, v2}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_3

    :pswitch_7
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v19

    goto :goto_3

    :pswitch_8
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v18

    goto :goto_3

    :pswitch_9
    sget-object v3, Ld7/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lr5/h1;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Ld7/c;

    goto :goto_3

    :pswitch_a
    sget-object v3, Ld7/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lr5/h1;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ld7/c;

    goto :goto_3

    :pswitch_b
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/accounts/Account;

    goto :goto_3

    :pswitch_c
    invoke-static {v1, v2}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_c

    move-object v14, v4

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v14, v5

    goto :goto_3

    :pswitch_d
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lr5/h1;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_3

    :pswitch_e
    invoke-static {v1, v2}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_d

    move-object v12, v4

    goto :goto_3

    :cond_d
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v12, v5

    goto :goto_3

    :pswitch_f
    invoke-static {v1, v2}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v10

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v9

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v8

    goto/16 :goto_3

    :cond_e
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v7, Lg7/e;

    invoke-direct/range {v7 .. v21}, Lg7/e;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ld7/c;[Ld7/c;ZIZLjava/lang/String;)V

    return-object v7

    :pswitch_13
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v8, v5

    move-object v10, v8

    move v6, v3

    move v7, v6

    move v9, v7

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_11

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    invoke-static {v1, v3}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_14
    invoke-static {v1, v3}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_f

    move-object v10, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    :pswitch_15
    invoke-static {v1, v3}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_4

    :pswitch_16
    invoke-static {v1, v3}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_10

    move-object v8, v2

    goto :goto_4

    :cond_10
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    :pswitch_17
    invoke-static {v1, v3}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_4

    :pswitch_18
    invoke-static {v1, v3}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_4

    :pswitch_19
    sget-object v4, Lg7/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lg7/i;

    goto :goto_4

    :cond_11
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v4, Lg7/d;

    invoke-direct/range {v4 .. v10}, Lg7/d;-><init>(Lg7/i;ZZ[II[I)V

    return-object v4

    :pswitch_1a
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_17

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_15

    const/4 v9, 0x2

    if-eq v8, v9, :cond_14

    const/4 v9, 0x3

    if-eq v8, v9, :cond_13

    const/4 v9, 0x4

    if-eq v8, v9, :cond_12

    invoke-static {v1, v7}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_12
    sget-object v6, Lg7/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v6}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lg7/d;

    goto :goto_5

    :cond_13
    invoke-static {v1, v7}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_5

    :cond_14
    sget-object v5, Ld7/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, Lr5/h1;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ld7/c;

    goto :goto_5

    :cond_15
    invoke-static {v1, v7}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v4, :cond_16

    move-object v4, v2

    goto :goto_5

    :cond_16
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    add-int/2addr v7, v4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v8

    goto :goto_5

    :cond_17
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lg7/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lg7/y;->l:Landroid/os/Bundle;

    iput-object v5, v0, Lg7/y;->m:[Ld7/c;

    iput v3, v0, Lg7/y;->n:I

    iput-object v6, v0, Lg7/y;->o:Lg7/d;

    return-object v0

    :pswitch_1b
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v9, 0x1

    if-eq v3, v9, :cond_1c

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1b

    const/4 v9, 0x3

    if-eq v3, v9, :cond_1a

    const/4 v9, 0x4

    if-eq v3, v9, :cond_19

    const/4 v9, 0x5

    if-eq v3, v9, :cond_18

    invoke-static {v1, v2}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_18
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_6

    :cond_19
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_6

    :cond_1a
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_6

    :cond_1b
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_6

    :cond_1c
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_6

    :cond_1d
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v3, Lg7/i;

    invoke-direct/range {v3 .. v8}, Lg7/i;-><init>(IIIZZ)V

    return-object v3

    :pswitch_1c
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move v9, v8

    move-object v6, v3

    move-object v7, v6

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v4, v2

    const/4 v10, 0x1

    if-eq v4, v10, :cond_23

    const/4 v10, 0x2

    if-eq v4, v10, :cond_21

    const/4 v10, 0x3

    if-eq v4, v10, :cond_20

    const/4 v10, 0x4

    if-eq v4, v10, :cond_1f

    const/4 v10, 0x5

    if-eq v4, v10, :cond_1e

    invoke-static {v1, v2}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_1e
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_7

    :cond_1f
    invoke-static {v1, v2}, Lr5/h1;->w(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_7

    :cond_20
    sget-object v4, Ld7/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ld7/a;

    goto :goto_7

    :cond_21
    invoke-static {v1, v2}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_22

    move-object v6, v3

    goto :goto_7

    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_7

    :cond_23
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_7

    :cond_24
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v4, Lg7/o;

    invoke-direct/range {v4 .. v9}, Lg7/o;-><init>(ILandroid/os/IBinder;Ld7/a;ZZ)V

    return-object v4

    :pswitch_1d
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v2

    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_29

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_28

    const/4 v8, 0x2

    if-eq v7, v8, :cond_27

    const/4 v8, 0x3

    if-eq v7, v8, :cond_26

    const/4 v8, 0x4

    if-eq v7, v8, :cond_25

    invoke-static {v1, v6}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_25
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_8

    :cond_26
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_8

    :cond_27
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v2}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_8

    :cond_28
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_8

    :cond_29
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lg7/n;

    invoke-direct {v0, v4, v2, v5, v3}, Lg7/n;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_1e
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move/from16 v18, v2

    move v8, v3

    move v9, v8

    move v10, v9

    move/from16 v17, v10

    move-object v15, v4

    move-object/from16 v16, v15

    move-wide v11, v5

    move-wide v13, v11

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/16 v4, 0x8

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1f
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v18, v2

    goto :goto_9

    :pswitch_20
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v17, v2

    goto :goto_9

    :pswitch_21
    invoke-static {v1, v2}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_9

    :pswitch_22
    invoke-static {v1, v2}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_9

    :pswitch_23
    invoke-static {v1, v2, v4}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_9

    :pswitch_24
    invoke-static {v1, v2, v4}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_9

    :pswitch_25
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_9

    :pswitch_26
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v2

    goto :goto_9

    :pswitch_27
    invoke-static {v1, v2}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v2

    move v8, v2

    goto :goto_9

    :cond_2a
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v7, Lg7/g;

    invoke-direct/range {v7 .. v18}, Lg7/g;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v7

    :pswitch_28
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    move-object v4, v2

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_2e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2d

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2b

    invoke-static {v1, v5}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_2b
    sget-object v4, Lg7/g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v5

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-nez v5, :cond_2c

    goto :goto_a

    :cond_2c
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b

    :cond_2d
    invoke-static {v1, v5}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_b

    :cond_2e
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lg7/j;

    invoke-direct {v0, v3, v4}, Lg7/j;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_29
    const-string v0, "inParcel"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf/j;

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Landroid/content/IntentSender;

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lf/j;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0

    :pswitch_2a
    const-string v0, "parcel"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf/a;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2f

    const/4 v1, 0x0

    goto :goto_c

    :cond_2f
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_c
    invoke-direct {v0, v1, v2}, Lf/a;-><init>(Landroid/content/Intent;I)V

    return-object v0

    :pswitch_2b
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_34

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_33

    const/4 v8, 0x2

    if-eq v7, v8, :cond_32

    const/4 v8, 0x3

    if-eq v7, v8, :cond_31

    const/4 v8, 0x4

    if-eq v7, v8, :cond_30

    invoke-static {v1, v6}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_30
    sget-object v4, Ld7/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ld7/a;

    goto :goto_d

    :cond_31
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_d

    :cond_32
    invoke-static {v1, v6}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_33
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_d

    :cond_34
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    return-object v0

    :pswitch_2c
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_37

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_36

    const/4 v6, 0x2

    if-eq v5, v6, :cond_35

    invoke-static {v1, v4}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_35
    invoke-static {v1, v4}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_36
    invoke-static {v1, v4}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_e

    :cond_37
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2d
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_3b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_39

    const/4 v8, 0x3

    if-eq v7, v8, :cond_38

    invoke-static {v1, v6}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_38
    const/16 v2, 0x8

    invoke-static {v1, v6, v2}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    goto :goto_f

    :cond_39
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_f

    :cond_3a
    invoke-static {v1, v6}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_3b
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Ld7/c;

    invoke-direct {v0, v4, v2, v3, v5}, Ld7/c;-><init>(IJLjava/lang/String;)V

    return-object v0

    :pswitch_2e
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v2

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_40

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3e

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3d

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3c

    invoke-static {v1, v6}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_3c
    invoke-static {v1, v6}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_3d
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v2}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    goto :goto_10

    :cond_3e
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_10

    :cond_3f
    invoke-static {v1, v6}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_10

    :cond_40
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v0, Ld7/a;

    invoke-direct {v0, v4, v5, v2, v3}, Ld7/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_2f
    invoke-static {v1}, Lr5/h1;->J(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-wide v14, v3

    move v7, v5

    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_42

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_4

    invoke-static {v1, v3}, Lr5/h1;->F(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_30
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_11

    :pswitch_31
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_11

    :pswitch_32
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3}, Lr5/h1;->A(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v3, :cond_41

    move-object/from16 v17, v2

    goto :goto_11

    :cond_41
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v17, v4

    goto :goto_11

    :pswitch_33
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_11

    :pswitch_34
    const/16 v4, 0x8

    invoke-static {v1, v3, v4}, Lr5/h1;->K(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_11

    :pswitch_35
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :pswitch_36
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lr5/h1;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/net/Uri;

    goto :goto_11

    :pswitch_37
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    :pswitch_38
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    :pswitch_39
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :pswitch_3a
    invoke-static {v1, v3}, Lr5/h1;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :pswitch_3b
    invoke-static {v1, v3}, Lr5/h1;->z(Landroid/os/Parcel;I)I

    move-result v3

    move v7, v3

    goto :goto_11

    :cond_42
    invoke-static {v1, v0}, Lr5/h1;->j(Landroid/os/Parcel;I)V

    new-instance v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :pswitch_3c
    new-instance v0, Landroidx/fragment/app/b1;

    invoke-direct {v0, v1}, Landroidx/fragment/app/b1;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3d
    new-instance v0, Landroidx/fragment/app/y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/fragment/app/y0;->p:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/y0;->q:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/y0;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/y0;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/y0;->m:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/fragment/app/c;

    iput-object v2, v0, Landroidx/fragment/app/y0;->n:[Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroidx/fragment/app/y0;->o:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/y0;->p:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/y0;->q:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/y0;->r:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/v0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/y0;->s:Ljava/util/ArrayList;

    return-object v0

    :pswitch_3e
    new-instance v0, Landroidx/fragment/app/v0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/v0;->l:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/v0;->m:I

    return-object v0

    :pswitch_3f
    new-instance v0, Landroidx/fragment/app/d;

    invoke-direct {v0, v1}, Landroidx/fragment/app/d;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_40
    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, v1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lt7/f;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lt7/e;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lt7/b;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lg7/e;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lg7/d;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lg7/y;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lg7/i;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lg7/o;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lg7/n;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lg7/g;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lg7/j;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lf/j;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lf/a;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Ld7/c;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Ld7/a;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/fragment/app/b1;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/fragment/app/y0;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/fragment/app/v0;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/fragment/app/d;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Landroidx/fragment/app/c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
