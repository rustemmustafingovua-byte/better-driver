.class public final Ld6/f;
.super Lg6/c1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Ld6/f;

.field public static final n:Ljava/lang/Object;


# instance fields
.field public transient l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld6/f;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Ld6/f;->l:Ljava/util/HashMap;

    sput-object v0, Ld6/f;->m:Ld6/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld6/f;->n:Ljava/lang/Object;

    return-void
.end method
