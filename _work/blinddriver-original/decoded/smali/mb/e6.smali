.class public final Lmb/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/r;


# instance fields
.field public final synthetic a:Lmb/x;

.field public final synthetic b:Ljava/lang/annotation/Annotation;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Lmb/i6;


# direct methods
.method public constructor <init>(Lmb/i6;Lmb/x;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/e6;->d:Lmb/i6;

    iput-object p2, p0, Lmb/e6;->a:Lmb/x;

    iput-object p3, p0, Lmb/e6;->b:Ljava/lang/annotation/Annotation;

    iput-object p4, p0, Lmb/e6;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    const-string v0, "value"

    iget-object v1, p0, Lmb/e6;->b:Ljava/lang/annotation/Annotation;

    const-string v2, "Enum \""

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lmb/e6;->d:Lmb/i6;

    invoke-virtual {v4, v1}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object v1

    invoke-virtual {v1}, Lmb/x;->j()Ljava/util/Map;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/s;

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    new-instance v4, Lhb/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" has no constant \""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Annotation \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/e6;->c:Ljava/lang/Class;

    const-string v2, "\" has no element \"value\""

    invoke-static {p0, v1, v2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lmb/b0;
    .locals 0

    iget-object p0, p0, Lmb/e6;->a:Lmb/x;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/e6;->a:Lmb/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
