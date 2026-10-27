.class public final Lg7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/b;


# static fields
.field public static b:Lg7/h;

.field public static final c:Lg7/i;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg7/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lg7/i;-><init>(IIIZZ)V

    sput-object v0, Lg7/h;->c:Lg7/i;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg7/h;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lg7/h;
    .locals 2

    const-class v0, Lg7/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg7/h;->b:Lg7/h;

    if-nez v1, :cond_0

    new-instance v1, Lg7/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lg7/h;->b:Lg7/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg7/h;->b:Lg7/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ld7/a;)V
    .locals 1

    iget-object p0, p0, Lg7/h;->a:Ljava/lang/Object;

    check-cast p0, Lt7/a;

    iget v0, p1, Ld7/a;->m:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->w:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/internal/a;->f(Lg7/f;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/a;->o:Lg7/h;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lg7/h;->a:Ljava/lang/Object;

    check-cast p0, Le7/h;

    invoke-interface {p0, p1}, Le7/h;->a(Ld7/a;)V

    :cond_1
    return-void
.end method
