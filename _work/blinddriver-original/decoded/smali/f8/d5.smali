.class public abstract Lf8/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf8/e5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/e5;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/d5;->a:Lf8/e5;

    return-void
.end method
