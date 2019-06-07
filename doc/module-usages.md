# Module Usages

17 Categories, 58 Modules, 316 Test Cases.

## TOC

- [Collection](#collection)
  - [array_include](#array_include)
  - [first](#first)
  - [last](#last)
- [Prompt](#prompt)
  - [ask](#ask)
  - [choose](#choose)
- [Path](#path)
  - [basename](#basename)
  - [dirname](#dirname)
  - [normalize](#normalize)
  - [pwd](#pwd)
  - [relative](#relative)
- [Util](#util)
  - [benchmark](#benchmark)
  - [compose](#compose)
- [Color](#color)
  - [color](#color)
- [File](#file)
  - [count_file_lines](#count_file_lines)
  - [count_files](#count_files)
  - [extname](#extname)
- [String](#string)
  - [count_lines](#count_lines)
  - [ends_with](#ends_with)
  - [get_matched](#get_matched)
  - [join](#join)
  - [lower_case](#lower_case)
  - [lower_first](#lower_first)
  - [split](#split)
  - [starts_with](#starts_with)
  - [str_include](#str_include)
  - [str_size](#str_size)
  - [trim](#trim)
  - [trim_end](#trim_end)
  - [trim_start](#trim_start)
  - [upper_case](#upper_case)
  - [upper_first](#upper_first)
- [Variable](#variable)
  - [cur_function_name](#cur_function_name)
- [System](#system)
  - [detect_os](#detect_os)
  - [hostname](#hostname)
  - [sleep](#sleep)
  - [xdg](#xdg)
- [Console](#console)
  - [echo](#echo)
  - [trace](#trace)
  - [trace_count](#trace_count)
  - [trace_time](#trace_time)
- [Condition](#condition)
  - [has](#has)
  - [if](#if)
  - [is_sourced](#is_sourced)
  - [not](#not)
  - [strict_has](#strict_has)
  - [strict_has_not](#strict_has_not)
- [Lobash](#lobash)
  - [import](#import)
  - [import_all](#import_all)
  - [import_category](#import_category)
- [Arithmetic](#arithmetic)
  - [inc](#inc)
  - [sub](#sub)
- [Array](#array)
  - [is_array](#is_array)
  - [union_array](#union_array)
- [Number](#number)
  - [is_float](#is_float)
  - [is_integer](#is_integer)
- [Unknown](#Unknown)
  - [is_matched](#is_matched)
- [Time](#time)
  - [now](#now)
  - [now_s](#now_s)

## Collection

### array_include

- Usage: `l.array_include <match> <array>`
- Since: 0.1.0
- More Examples: [../test/modules/array_include.bats](../test/modules/array_include.bats)

### first

- Usage: `l.first <array_name>`
- Description: It will return the value of arg1.
- Since: 0.1.0
- More Examples: [../test/modules/first.bats](../test/modules/first.bats)

### last

- Usage: `l.last <array_name>`
- Description: It will return the value of argN.
- Since: 0.1.0
- More Examples: [../test/modules/last.bats](../test/modules/last.bats)

## Prompt

### ask

- Usage: `l.ask <arg>...`
- Since: 0.1.0
- More Examples: [../test/modules/ask.bats](../test/modules/ask.bats)

### choose

- Usage: `l.choose <option>...`
- Dependent: is_integer
- Since: 0.1.0
- More Examples: [../test/modules/choose.bats](../test/modules/choose.bats)

## Path

### basename

- Usage: `l.basename <path>`
- Description: Alternative to basename command. It much faster because using shell parameter expansion.
- Since: 0.1.0
- More Examples: [../test/modules/basename.bats](../test/modules/basename.bats)

### dirname

- Usage: `l.dirname <path>`
- Description: Alternative to dirname command. It much faster because using shell parameter expansion.
- Since: 0.1.0
- More Examples: [../test/modules/dirname.bats](../test/modules/dirname.bats)

### normalize

- Usage: `l.normalize <path>`
- Since: 0.1.0
- More Examples: [../test/modules/normalize.bats](../test/modules/normalize.bats)

### pwd

- Usage: `l.pwd`
- Since: 0.1.0
- More Examples: [../test/modules/pwd.bats](../test/modules/pwd.bats)

### relative

- Usage: `l.relative <path1> <path2>`
- Dependent: normalize
- Since: 0.1.0
- More Examples: [../test/modules/relative.bats](../test/modules/relative.bats)

## Util

### benchmark

- Usage: `l.benchmark <arg>...`
- Since: 0.1.0
- More Examples: [../test/modules/benchmark.bats](../test/modules/benchmark.bats)

### compose

- Usage: `l.compose <arg> [<fn>]...`
- Since: 0.1.0
- More Examples: [../test/modules/compose.bats](../test/modules/compose.bats)

## Color

### color

- Since: 0.1.0
- More Examples: [../test/modules/color.bats](../test/modules/color.bats)

## File

### count_file_lines

- Usage: `l.count_file_lines <filepath>`
- Since: 0.1.0
- More Examples: [../test/modules/count_file_lines.bats](../test/modules/count_file_lines.bats)

### count_files

- Usage: `l.count_files <directory_path>`
- Since: 0.1.0
- More Examples: [../test/modules/count_files.bats](../test/modules/count_files.bats)

### extname

- Usage: `l.extname <string>`
- Since: 0.1.0
- More Examples: [../test/modules/extname.bats](../test/modules/extname.bats)

## String

### count_lines

- Usage: `l.count_lines <var>`
- Since: 0.1.0
- More Examples: [../test/modules/count_lines.bats](../test/modules/count_lines.bats)

### ends_with

- Usage: `l.ends_with <string> <match>`
- Since: 0.1.0
- More Examples: [../test/modules/ends_with.bats](../test/modules/ends_with.bats)

### get_matched

- Usage: `l.get_matched regex [index=1] string`
- Since: 0.1.0
- More Examples: [../test/modules/get_matched.bats](../test/modules/get_matched.bats)

### join

- Usage: `l.join <IFS> <arg>...`
- Since: 0.1.0
- More Examples: [../test/modules/join.bats](../test/modules/join.bats)

### lower_case

- Usage: `l.lower_case <string>`
- Since: 0.1.0
- More Examples: [../test/modules/lower_case.bats](../test/modules/lower_case.bats)

### lower_first

- Usage: `l.lower_first <string>`
- Since: 0.1.0
- More Examples: [../test/modules/lower_first.bats](../test/modules/lower_first.bats)

### split

- Usage: `l.split <string> [delimiter=' ']`
- Since: 0.1.0
- More Examples: [../test/modules/split.bats](../test/modules/split.bats)

### starts_with

- Usage: `l.starts_with <string> <match>`
- Since: 0.1.0
- More Examples: [../test/modules/starts_with.bats](../test/modules/starts_with.bats)

### str_include

- Usage: `str_include <string> <match>`
- Since: 0.1.0
- More Examples: [../test/modules/str_include.bats](../test/modules/str_include.bats)

### str_size

- Usage: `l.str_size <string>`
- Since: 0.1.0
- More Examples: [../test/modules/str_size.bats](../test/modules/str_size.bats)

### trim

- Usage: `l.trim <string>`
- Dependent: trim_start, trim_end
- Since: 0.1.0
- More Examples: [../test/modules/trim.bats](../test/modules/trim.bats)

### trim_end

- Usage: `l.trim_end <string>`
- Since: 0.1.0
- More Examples: [../test/modules/trim_end.bats](../test/modules/trim_end.bats)

### trim_start

- Usage: `l.trim_start <string>`
- Since: 0.1.0
- More Examples: [../test/modules/trim_start.bats](../test/modules/trim_start.bats)

### upper_case

- Usage: `l.upper_case <string>`
- Since: 0.1.0
- More Examples: [../test/modules/upper_case.bats](../test/modules/upper_case.bats)

### upper_first

- Usage: `l.upper_first <string>`
- Since: 0.1.0
- More Examples: [../test/modules/upper_first.bats](../test/modules/upper_first.bats)

## Variable

### cur_function_name

- Usage: `l.cur_function_name`
- Since: 0.1.0
- More Examples: [../test/modules/cur_function_name.bats](../test/modules/cur_function_name.bats)

## System

### detect_os

- Usage: `l.detect_os`
- Since: 0.1.0
- More Examples: [../test/modules/detect_os.bats](../test/modules/detect_os.bats)

### hostname

- Usage: `l.hostname`
- Since: 0.1.0
- More Examples: [../test/modules/hostname.bats](../test/modules/hostname.bats)

### sleep

- Usage: `l.sleep <number_or_float>`
- Description: Same to sleep command but support float
- Since: 0.1.0
- More Examples: [../test/modules/sleep.bats](../test/modules/sleep.bats)

### xdg

- Usage: `l.get_xdg_config_home`
- Since: 0.1.0
- More Examples: [../test/modules/xdg.bats](../test/modules/xdg.bats)

## Console

### echo

- Usage: `l.echo <string>...`
- Description: A safe way to echo string. Not support any options.
The builtin echo will get unexpected result while execute `b=( -n 123 ); echo "${b[@]}"`.
See https://github.com/anordal/shellharden/blob/master/how_to_do_things_safely_in_bash.md#echo--printf
- Since: 0.1.0
- More Examples: [../test/modules/echo.bats](../test/modules/echo.bats)

### trace

- Usage: `l.trace [label]`
- Since: 0.1.0
- More Examples: [../test/modules/trace.bats](../test/modules/trace.bats)

### trace_count

- Usage: `l.trace_count [label]`
- Since: 0.1.0
- More Examples: [../test/modules/trace_count.bats](../test/modules/trace_count.bats)

### trace_time

- Usage: `l.trace_time [label]`
- Dependent: now
- Since: 0.1.0
- More Examples: [../test/modules/trace_time.bats](../test/modules/trace_time.bats)

## Condition

### has

- Usage: `l.has <command>
l.has not <command>`
- Since: 0.1.0
- More Examples: [../test/modules/has.bats](../test/modules/has.bats)

### if

- Usage: `l.if <condition> <then> <else>`
- Since: 0.1.0
- More Examples: [../test/modules/if.bats](../test/modules/if.bats)

### is_sourced

- Since: 0.1.0
- More Examples: [../test/modules/is_sourced.bats](../test/modules/is_sourced.bats)

### not

- Usage: `l.not <condition>`
- Since: 0.1.0
- More Examples: [../test/modules/not.bats](../test/modules/not.bats)

### strict_has

- Usage: `l.strict_has <command>`
- Since: 0.1.0
- More Examples: [../test/modules/strict_has.bats](../test/modules/strict_has.bats)

### strict_has_not

- Usage: `strict_has_not <command>`
- Dependent: strict_has, not
- Since: 0.1.0
- More Examples: [../test/modules/strict_has_not.bats](../test/modules/strict_has_not.bats)

## Lobash

### import

- Usage: `l.import [-f|--force] <module_name1> <module_nameN> [prefix=l.]`
- Since: 0.1.0
- More Examples: [../test/modules/import.bats](../test/modules/import.bats)

### import_all

- Usage: `l.import_all [prefix=l.]`
- Dependent: import
- Since: 0.1.0
- More Examples: [../test/modules/import_all.bats](../test/modules/import_all.bats)

### import_category

- Usage: `l.import_category <category_name1> <category_nameN> [prefix=l.]`
- Dependent: import
- Since: 0.1.0
- More Examples: [../test/modules/import_category.bats](../test/modules/import_category.bats)

## Arithmetic

### inc

- Usage: `l.inc <var_name> [addend=1]`
- Since: 0.1.0
- More Examples: [../test/modules/inc.bats](../test/modules/inc.bats)

### sub

- Usage: `l.sub <var_name> [addend=1]`
- Since: 0.1.0
- More Examples: [../test/modules/sub.bats](../test/modules/sub.bats)

## Array

### is_array

- Usage: `l.is_array <var_name>`
- Since: 0.1.0
- More Examples: [../test/modules/is_array.bats](../test/modules/is_array.bats)

### union_array

- Usage: `l.union_array <var_name>...`
- Since: 0.1.0
- More Examples: [../test/modules/union_array.bats](../test/modules/union_array.bats)

## Number

### is_float

- Usage: `l.is_float <str>`
- Since: 0.1.0
- More Examples: [../test/modules/is_float.bats](../test/modules/is_float.bats)

### is_integer

- Usage: `l.is_integer <str>`
- Since: 0.1.0
- More Examples: [../test/modules/is_integer.bats](../test/modules/is_integer.bats)

## Unknown

### is_matched

- More Examples: [../test/modules/is_matched.bats](../test/modules/is_matched.bats)

## Time

### now

- Usage: `l.now`
- Description: Print the timestamp of the number of milliseconds that have elapsed since the Unix epoch (1 January 1970 00:00:00 UTC).
- Since: 0.1.0
- More Examples: [../test/modules/now.bats](../test/modules/now.bats)

### now_s

- Usage: `l.now_s`
- Description: Print the timestamp of the number of seconds that have elapsed since the Unix epoch (1 January 1970 00:00:00 UTC).
- Since: 0.1.0
- More Examples: [../test/modules/now_s.bats](../test/modules/now_s.bats)