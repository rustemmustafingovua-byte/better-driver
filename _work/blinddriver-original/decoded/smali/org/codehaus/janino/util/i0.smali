.class public final Lorg/codehaus/janino/util/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/c;


# instance fields
.field public final a:S

.field public final b:S

.field public final c:S

.field public final d:Ljava/util/ArrayList;

.field public final synthetic e:Lorg/codehaus/janino/util/t0;


# direct methods
.method public constructor <init>(Lorg/codehaus/janino/util/t0;SSSLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/i0;->e:Lorg/codehaus/janino/util/t0;

    iput-short p2, p0, Lorg/codehaus/janino/util/i0;->a:S

    iput-short p3, p0, Lorg/codehaus/janino/util/i0;->b:S

    iput-short p4, p0, Lorg/codehaus/janino/util/i0;->c:S

    iput-object p5, p0, Lorg/codehaus/janino/util/i0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/janino/util/i0;->e:Lorg/codehaus/janino/util/t0;

    iget-object p0, p0, Lorg/codehaus/janino/util/i0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/codehaus/janino/util/t0;->b(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b(Lorg/codehaus/janino/util/h;)V
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/i0;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/codehaus/janino/util/i0;->e:Lorg/codehaus/janino/util/t0;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lorg/codehaus/janino/util/i0;->b:S

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/util/t0;->l(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(...)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
