.class public final Lorg/codehaus/janino/util/d0;
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

    iput-object p1, p0, Lorg/codehaus/janino/util/d0;->e:Lorg/codehaus/janino/util/t0;

    iput-short p2, p0, Lorg/codehaus/janino/util/d0;->a:S

    iput-short p3, p0, Lorg/codehaus/janino/util/d0;->b:S

    iput-short p4, p0, Lorg/codehaus/janino/util/d0;->c:S

    iput-object p5, p0, Lorg/codehaus/janino/util/d0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lorg/codehaus/janino/util/d0;->e:Lorg/codehaus/janino/util/t0;

    iget-object p0, p0, Lorg/codehaus/janino/util/d0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/codehaus/janino/util/t0;->b(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method
