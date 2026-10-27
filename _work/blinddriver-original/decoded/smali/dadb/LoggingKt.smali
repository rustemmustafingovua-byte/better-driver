.class public final Ldadb/LoggingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DADB_LOGGING"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ldadb/LoggingKt;->ENABLED:Z

    return-void
.end method

.method public static final log(Li9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/a;",
            ")V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Ldadb/LoggingKt;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
