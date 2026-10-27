.class public abstract Li6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Li6/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ly4/s;->A(Ljava/lang/Throwable;)V

    :catch_0
    :goto_0
    return-void
.end method
