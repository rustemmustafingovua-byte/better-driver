.class public final Lf7/z;
.super Lt7/c;
.source "SourceFile"

# interfaces
.implements Le7/g;
.implements Le7/h;


# static fields
.field public static final k:Li7/b;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Li7/b;

.field public final g:Ljava/util/Set;

.field public final h:Lg7/c;

.field public i:Lt7/a;

.field public j:Lf7/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ls7/b;->a:Li7/b;

    sput-object v0, Lf7/z;->k:Li7/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln7/f;Lg7/c;)V
    .locals 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ln7/b;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lf7/z;->d:Landroid/content/Context;

    iput-object p2, p0, Lf7/z;->e:Landroid/os/Handler;

    iput-object p3, p0, Lf7/z;->h:Lg7/c;

    iget-object p1, p3, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lf7/z;->g:Ljava/util/Set;

    sget-object p1, Lf7/z;->k:Li7/b;

    iput-object p1, p0, Lf7/z;->f:Li7/b;

    return-void
.end method


# virtual methods
.method public final a(Ld7/a;)V
    .locals 0

    iget-object p0, p0, Lf7/z;->j:Lf7/q;

    invoke-virtual {p0, p1}, Lf7/q;->j(Ld7/a;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object p0, p0, Lf7/z;->j:Lf7/q;

    iget-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    check-cast v0, Lf7/d;

    iget-object v0, v0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lf7/q;->c:Ljava/lang/Object;

    check-cast p0, Lf7/b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lf7/o;->k:Z

    if-eqz v0, :cond_0

    new-instance p1, Ld7/a;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Ld7/a;-><init>(I)V

    invoke-virtual {p0, p1}, Lf7/o;->p(Ld7/a;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lf7/o;->c(I)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lf7/z;->i:Lt7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<<default account>>"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v0, Lt7/a;->z:Lg7/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    sget-object v6, Lc7/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v1}, Lg7/s;->c(Ljava/lang/Object;)V

    sget-object v6, Lc7/a;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v7, Lc7/a;->d:Lc7/a;

    if-nez v7, :cond_0

    new-instance v7, Lc7/a;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Lc7/a;-><init>(Landroid/content/Context;)V

    sput-object v7, Lc7/a;->d:Lc7/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lc7/a;->d:Lc7/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v6, "defaultGoogleSignInAccount"

    invoke-virtual {v1, v6}, Lc7/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "googleSignInAccount:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lc7/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    :cond_2
    :goto_2
    move-object v1, v4

    :goto_3
    new-instance v6, Lg7/n;

    iget-object v7, v0, Lt7/a;->B:Ljava/lang/Integer;

    invoke-static {v7}, Lg7/s;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v2, v5, v7, v1}, Lg7/n;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lt7/d;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v5, v0, Ln7/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v5, Ln7/c;->a:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0x4f45

    invoke-static {v1, v5}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v7, 0x4

    invoke-static {v1, v3, v7}, Lwa/h;->F(Landroid/os/Parcel;II)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x0

    invoke-static {v1, v2, v6, v7}, Lwa/h;->z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v1, v5}, Lwa/h;->E(Landroid/os/Parcel;I)V

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v0, Ln7/a;->c:Landroid/os/IBinder;

    const/16 v6, 0xc

    invoke-interface {v0, v6, v1, v5, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    const-string v1, "Remote service probably died when signIn is called"

    const-string v5, "SignInClientImpl"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance v1, Lt7/f;

    new-instance v6, Ld7/a;

    const/16 v7, 0x8

    invoke-direct {v6, v7, v4}, Ld7/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v1, v3, v6, v4}, Lt7/f;-><init>(ILd7/a;Lg7/o;)V

    new-instance v3, Lf5/a;

    invoke-direct {v3, v2, p0, v1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lf7/z;->e:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v5, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method
