.class public Lorg/maplibre/android/style/expressions/Expression$FormatEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatEntry"
.end annotation


# instance fields
.field private options:[Lorg/maplibre/android/style/expressions/Expression$FormatOption;

.field private text:Lorg/maplibre/android/style/expressions/Expression;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->text:Lorg/maplibre/android/style/expressions/Expression;

    iput-object p2, p0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->options:[Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)[Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->options:[Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->text:Lorg/maplibre/android/style/expressions/Expression;

    return-object p0
.end method
