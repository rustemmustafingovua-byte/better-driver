.class public abstract Lu9/p0;
.super Lu9/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lu9/p;->m:Lu9/o;

    const-string v1, "baseKey"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
