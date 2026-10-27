.class public final Lh4/h;
.super Lg6/c1;
.source "SourceFile"


# static fields
.field public static final l:Lh4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/h;->l:Lh4/h;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Idle()"

    return-object p0
.end method
