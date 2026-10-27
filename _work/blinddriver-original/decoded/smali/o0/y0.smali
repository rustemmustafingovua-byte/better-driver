.class public final Lo0/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final l:Lo0/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/y0;->l:Lo0/y0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    sget-wide v0, Lm1/p;->b:J

    new-instance p0, Lm1/p;

    invoke-direct {p0, v0, v1}, Lm1/p;-><init>(J)V

    return-object p0
.end method
